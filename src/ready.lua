---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

-- Config
local enabled = true

if not enabled then return end

-- Depends
sjson = rom.mods['SGG_Modding-SJSON']
modutil = rom.mods['SGG_Modding-ModUtil']
rom.mods['SGG_Modding-ENVY'].auto()

game = rom.game
import_as_fallback(game)

function mod.ReleaseHealthReserve( amount, source )
	local previousMaxHealth = GetHeroMaxAvailableHealth()
	if CurrentRun.Hero.ReserveHealthSources[source] then
		if CurrentRun.Hero.ReserveHealthSources[source] > amount then
			CurrentRun.Hero.ReserveHealthSources[source] = CurrentRun.Hero.ReserveHealthSources[source] - amount	
		else
			CurrentRun.Hero.ReserveHealthSources[source] = 0
		end
	else
		return 
	end
	local newMaxHealth = GetHeroMaxAvailableHealth()

	if newMaxHealth > previousMaxHealth then
			Heal( CurrentRun.Hero, { HealAmount = newMaxHealth - previousMaxHealth, Silent = true })
			CurrentRun.Hero.ReserveHealthExtra = CurrentRun.Hero.ReserveHealthExtra - (newMaxHealth - previousMaxHealth)
	end
	FrameState.RequestUpdateHealthUI = true
end

function mod.ReserveHealth( amount, source )
	DebugAssert({ Condition = ( source ~= nil ), Text = "No source provided to reserve health!", Owner = "Alice" })
	local HealthMissing = GetHeroMaxAvailableHealth() - CurrentRun.Hero.Health
	IncrementTableValue(CurrentRun.Hero.ReserveHealthSources, source, amount )
	if GetHeroMaxAvailableHealth() < CurrentRun.Hero.Health then
		local extraHealth = CurrentRun.Hero.Health - GetHeroMaxAvailableHealth()
		SacrificeHealth({ SacrificeHealth = extraHealth+HealthMissing, IgnoreHealthBuffer = true, IgnoreDamageCap = true, ManuallyTriggered = true, Silent = true })
		CurrentRun.Hero.ReserveHealthExtra = CurrentRun.Hero.ReserveHealthExtra + extraHealth
	else 
		SacrificeHealth({ SacrificeHealth = amount, IgnoreHealthBuffer = true, IgnoreDamageCap = true, ManuallyTriggered = true, Silent = true })
	end
	FrameState.RequestUpdateHealthUI = true
end

function mod.SummonOrCast ( triggerArgs, functionArgs )
	if triggerArgs.Name == "WeaponAxe" then
		mod.SummonEnemy( triggerArgs, functionArgs )
	elseif triggerArgs.Name == "WeaponCast" then
		mod.SummonCastTeleport( triggerArgs )
	end
end

function mod.SummonCastTeleport( triggerArgs )

	local heroLocation = GetLocation({ Id = CurrentRun.Hero.ObjectId })
	if not heroLocation.X or not heroLocation.Y then
		return
	end
	if triggerArgs.UnitIdOverride then
		return
	end
	local castProjectilePointId = SpawnObstacle({ Name = "InvisibleTarget", LocationX = heroLocation.X, LocationY = heroLocation.Y, Group = "Scripting" })
	local testPoint = SpawnObstacle({ Name = "InvisibleTarget", LocationX = heroLocation.X, LocationY = heroLocation.Y, Group = "Scripting" })
	
	local teleportEnemies = {}
	for i, enemy in pairs( MapState.SpellSummons ) do
		table.insert( teleportEnemies, enemy.ObjectId )
	end
	local numTeleportEnemies = #teleportEnemies
	if numTeleportEnemies > 0 then
		-- Primary attempt within cast radius
		local spawnPoints = FindSpawnPointsInCast( castProjectilePointId, 350, numTeleportEnemies )
		if IsEmpty(spawnPoints) then
			wait( 0.02 )
			-- Backup attempt, outside cast radius but still close
			spawnPoints = FindSpawnPointsInCast( castProjectilePointId, 500, numTeleportEnemies )
		end

		for i, enemyId in ipairs( teleportEnemies ) do
			CreateAnimation({ Name = "TeleportDisappearSmall", DestinationId = enemyId, })
			if not IsEmpty(spawnPoints) then
				Teleport({ Id = testPoint, DestinationId = spawnPoints[i % #spawnPoints + 1], OffsetX = RandomFloat(-50,50), OffsetY = RandomFloat(-50,50)})
				if IsLocationBlocked({ Id = testPoint }) then
					Teleport({ Id = enemyId, DestinationId = spawnPoints[i % #spawnPoints + 1] })
				else				
					Teleport({ Id = enemyId, DestinationId = testPoint })
				end
			else
				-- Final attempt because this can cause sorting flickering
				local generatedPoint = SpawnObstacle({ Name = "InvisibleTarget", LocationX = heroLocation.X + RandomFloat(-150, 150), LocationY = heroLocation.Y + RandomFloat(-100, 100), Group = "Scripting", ForceToValidLocation = true})
				if not IsLocationBlocked({ Id = generatedPoint }) then
					Teleport({ Id = enemyId, DestinationId = generatedPoint })
				end
				Destroy({Ids = { generatedPoint }})
			end
			CreateAnimation({ Name = "TeleportDisappearSmall", DestinationId = enemyId, })
		end
	end
	Destroy({ Ids = {testPoint, castProjectilePointId }})
end

function mod.SummonEnemy( triggerArgs, functionArgs )

	IncrementTableValue( SessionMapState, "SpellFired" )
	--GetHeroTrait("ShovelRaiseDeadNecroMel")
	local trait = GetHeroTrait("ShovelRaiseDeadNecroMel")
	trait.AttackSummons = trait.AttackSummons + 1
	
	if trait.AttackSummons > 1 then
		if CurrentRun.Hero.Health > trait.Reserve then
			mod.ReserveHealth( functionArgs.Reserve, "Aspect")
		else
			local unitId = CurrentRun.Hero.ObjectId
			PlaySound({ Name = "/Leftovers/Menu Sounds/LevelUpFlash", Id = unitId, ManagerCap = 46 })
			Flash({ Id = unitId, Speed = 0.85, MinFraction = 0.7, MaxFraction = 0.0, Color = Color.White, Duration = 0.15, ExpireAfterCycle = true })
			thread( InCombatText, unitId, "Not enough Health!", 0.5 , { SkipShadow = true } )
			return
		end
	end

	local enemyName = functionArgs.enemy
	local team = functionArgs.team
	local biome = functionArgs.biome
	local Enemytype = functionArgs.type
	if biome == "Erebus" then
		LoadPackages({ Name = "BiomeF", IgnoreAssert = true })
	elseif biome == "Oceanus" then
		LoadPackages({ Name = "BiomeG", IgnoreAssert = true })
	elseif biome == "Mourning_Fields" then
		LoadPackages({ Name = "BiomeH", IgnoreAssert = true })
	elseif biome == "Tartarus" then
		LoadPackages({ Name = "BiomeI", IgnoreAssert = true })
	elseif biome == "Ephyra" then
		LoadPackages({ Name = "BiomeN", IgnoreAssert = true })
	elseif biome == "Sea" then
		LoadPackages({ Name = "BiomeO", IgnoreAssert = true })
	elseif biome == "Mount_Olympus" then
		LoadPackages({ Name = "BiomeP", IgnoreAssert = true })
	elseif biome == "Summit" then
		LoadPackages({ Name = "BiomeQ", IgnoreAssert = true })
	elseif biome == "Tartarus_H1" or biome == "Asphodel" or biome == "Elysium" or biome == "Styx" then
		LoadPackages({ Name = "RoomManagerModsNikkelMHadesBiomes", IgnoreAssert = true })
	end
	local enemyData = EnemyData[enemyName]
	local hasEnemy = false
	
	local summonArgs = { 
		MaxHealthMultiplier = functionArgs.MaxHealthMultiplier or 1, 
		SpeedMultiplier = functionArgs.SpeedMultiplier or 1, 
		ScaleMultiplier = functionArgs.ScaleMultiplier or 1, 
		DamageMultiplier = functionArgs.DamageMultiplier or 1,
		CritMultiplier = functionArgs.CritMultiplier or 0,
		DodgeMultiplier = functionArgs.DodgeMultiplier or 0,
	}
	local trait = {}
	summonArgs.MaxHealthMultiplier = (( GetHeroMaxAvailableHealth() + (CurrentRun.Hero.ReserveHealthSources["Aspect"] or 0)) / 30)
	if triggerArgs.Name == "WeaponAxe" then

		if HeroHasTrait("ChaosWeaponBlessing") then
			trait = GetHeroTrait("ChaosWeaponBlessing")
				summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.2) - 1
		end
		if HeroHasTrait("HermesWeaponBoon") then
			trait = GetHeroTrait("HermesWeaponBoon")
			summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (1 - (trait.ReportedWeaponMultiplier or 0.9))
		end
		--Adding Attack outgoing damage modifier boons
		if HeroHasTrait("ZeusWeaponBoon") then
			trait = GetHeroTrait("ZeusWeaponBoon")
			summonArgs.GodVFX = "Zeus"
		elseif HeroHasTrait("HeraWeaponBoon") then
			trait = GetHeroTrait("HeraWeaponBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedWeaponMultiplier or 1.5 ) - 1
			summonArgs.GodVFX = "Hera"
		elseif HeroHasTrait("PoseidonWeaponBoon") then
			summonArgs.GodVFX = "Poseidon"
		elseif HeroHasTrait("ApolloWeaponBoon") then
			trait = GetHeroTrait("ApolloWeaponBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedWeaponMultiplier or 1.4) - 1
			summonArgs.GodVFX = "Apollo"
			summonArgs.ScaleMultiplier = summonArgs.ScaleMultiplier + 0.4
		elseif HeroHasTrait("DemeterWeaponBoon") then
			trait = GetHeroTrait("DemeterWeaponBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedWeaponMultiplier or 1.3) - 1
			summonArgs.GodVFX = "Demeter"
		elseif HeroHasTrait("AphroditeWeaponBoon") then 
			trait = GetHeroTrait("AphroditeWeaponBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedWeaponMultiplier or 1.8) - 1
			summonArgs.GodVFX = "Aphrodite"
		elseif HeroHasTrait("HephaestusWeaponBoon") then 
			summonArgs.GodVFX = "Hephaestus"
		elseif HeroHasTrait("HestiaWeaponBoon") then
			summonArgs.GodVFX = "Hestia"			
		elseif HeroHasTrait("AresWeaponBoon") then
			trait = GetHeroTrait("AresWeaponBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedWeaponMultiplier or 1.2) - 1
			summonArgs.GodVFX = "Ares"
		end
	end
	--Adding Attackoutgoing damage modifier boons
	--if HeroHasTrait("Hydraulic Might") then
		--if RequiredEffects = { "EncounterStartOffense" },
	--	summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + trait.ReportedMultiplier - 1
	--end
	if HeroHasTrait("HighHealthOffenseBoon") then
		trait = GetHeroTrait("HighHealthOffenseBoon")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.05) - 1
		if CurrentRun.Hero.Health > (GetHeroMaxAvailableHealth() * trait.ReportedThreshold) then
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.10) - 1
		end
	end
	if HeroHasTrait("PerfectDamageBonusBoon") and not SessionMapState.DeactivatePerfectDamageBonus then
		trait = GetHeroTrait("PerfectDamageBonusBoon")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.1) - 1
	end
	if HeroHasTrait("ElementalUnifiedBoon") and (CurrentRun.Hero.HighestBaseElementCount >= 8) then
		trait = GetHeroTrait("ElementalUnifiedBoon")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedTotalDamageChange or 1.25) - 1
	end
	if HeroHasTrait("TimedKillBuffBoon") then
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.ReportedMultiplier or 0.01)* SessionMapState.TimedBuff)
	end
	if HeroHasTrait("CritBonusBoon") then
		trait = GetHeroTrait("CritBonusBoon")
		summonArgs.CritMultiplier = summonArgs.CritMultiplier + (trait.ReportedCritBonus or 0.03)
	end
	if HeroHasTrait("CommonGlobalDamageBoon") and CurrentRun.Hero.GodBoonRarities.Common <= 0 then
		trait = GetHeroTrait("CommonGlobalDamageBoon")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedTotalDamageChange or 1.1) -1
	end
	if HeroHasTrait("CirceEnlargeTrait") then
		trait = GetHeroTrait("CirceEnlargeTrait")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.15) -1
		summonArgs.ScaleMultiplier = summonArgs.ScaleMultiplier + 0.25
	end
	if HeroHasTrait("DodgeChanceBoon") then
		trait = GetHeroTrait("DodgeChanceBoon")
		summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + ((trait.ReportedDodgeChance or 0) * CurrentRun.Hero.OlympianBoonCount)
		summonArgs.DodgeMultiplier = summonArgs.DodgeMultiplier + ((trait.ReportedDodgeChance or 0) * CurrentRun.Hero.OlympianBoonCount)
	end
	if HeroHasTrait("CirceShrinkTrait") then
		trait = GetHeroTrait("CirceShrinkTrait")
		summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (trait.ReportedDodgeChance or 0)
		summonArgs.DodgeMultiplier = summonArgs.DodgeMultiplier + (trait.ReportedBaseSpeed or 1) -1
		summonArgs.ScaleMultiplier = summonArgs.ScaleMultiplier - 0.25
	end

		

	local offset = CalcOffset(math.rad(GetAngle({Id = CurrentRun.Hero.ObjectId})), 100 )
	local invaderSpawnPoint = SpawnObstacle({ Name = "InvisibleTarget", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = offset.X, OffsetY = offset.Y, ForceToValidLocation = true})
	

	summonArgs.SpawnPointId = invaderSpawnPoint
	summonArgs.TryUseRequiredSpawnPoint = true
	summonArgs.team = team
	summonArgs.type = Enemytype
	local newEnemy = mod.CreateEnemy( enemyName, summonArgs)
	DestroyOnDelay({ invaderSpawnPoint }, 0.1)
end


function mod.CreateEnemy( enemyName, args )
	args = args or {}	
	local team = args.team or "player"
	local Enemytype = args.type or "regular"
	local weaponDataMultipliers = 
	{ 
		MaxHealthMultiplier = args.MaxHealthMultiplier or 1, 
		SpeedMultiplier = args.SpeedMultiplier or 1,
		ScaleMultiplier = args.ScaleMultiplier or 1,
		DamageMultiplier = args.DamageMultiplier or 1,
		CritMultiplier = args.CritMultiplier or 0,
		DodgeMultiplier = args.DodgeMultiplier or 0,
	}
	local enemyData = EnemyData[enemyName]
	local newEnemy = DeepCopyTable( enemyData )
	newEnemy.DefaultAIData.TargetClosest = true
	newEnemy.MaxHealth = newEnemy.MaxHealth * weaponDataMultipliers.MaxHealthMultiplier
	newEnemy.HealthBarOffsetY = (newEnemy.HealthBarOffsetY or -155 ) * weaponDataMultipliers.ScaleMultiplier
	newEnemy.HideHealthBar = false
	if team == "player" then
		newEnemy.BlocksLootInteraction = false
		newEnemy.AlwaysTraitor = true
		newEnemy.Charmed = true
		newEnemy.IgnoreCastSlow = true
		newEnemy.UseUniqueDamageColors = true
		newEnemy.DamageTextStartColor = Color.SummonDamageLight
		newEnemy.DamageTextColor = Color.SummonDamage
		newEnemy.MoneyDropOnDeath = nil
		newEnemy.RequiredKill = false
		newEnemy.BlockPostBossMetaUpgrades = true
	else
		newEnemy.BlocksLootInteraction = true
		newEnemy.Charmed = false
		newEnemy.IgnoreCastSlow = false
		newEnemy.UseUniqueDamageColors = false
		newEnemy.MoneyDropOnDeath = nil
		newEnemy.RequiredKill = true
		newEnemy.HideHealthBar = false
		if team == "team2" then
			newEnemy.AlwaysTraitor = true
		else
			newEnemy.AlwaysTraitor = false
		end
	end

	if args.TryUseRequiredSpawnPoint and newEnemy.RequiredSpawnPoint then
		local spawnPointId = SelectSpawnPoint(CurrentRun.CurrentRoom, newEnemy, {SpawnNearId = CurrentRun.Hero.ObjectId, SpawnRadius = 900, AllowNoSpawnPoint = true })
		if not spawnPointId then
			spawnPointId = SelectSpawnPoint(CurrentRun.CurrentRoom, newEnemy, { AllowNoSpawnPoint = true })
		end
		if spawnPointId then
			args.SpawnPointId = spawnPointId
		end
	end
	newEnemy.BlocksLootInteraction = false

	local spawnOnId = newEnemy.SpellSummonSpawnOnId or args.SpawnPointId
	if newEnemy.SpellSummonSpawnOnIdPerMap ~= nil and newEnemy.SpellSummonSpawnOnIdPerMap[CurrentRun.CurrentRoom.Name] ~= nil then
		spawnOnId = newEnemy.SpellSummonSpawnOnIdPerMap[CurrentRun.CurrentRoom.Name]
	end

	newEnemy.ObjectId = SpawnUnit({
			Name = enemyData.Name,
			Group = "Standing",
			DestinationId = spawnOnId, OffsetX = 0, OffsetY = 0 })
	
	thread( SetupUnit, newEnemy, CurrentRun, { SkipPresentation = false } )

	if args.GodVFX then
		local TextureName = "GR2/JarlUlsfark-" .. enemyData.Name .. "_Color_" .. args.GodVFX
		SetThingProperty({ Property = "GrannyTexture", Value = TextureName , DestinationId = newEnemy.ObjectId })
		--SetThingProperty({ Property = "GrannyTexture", Value = "Harpy_Color" , DestinationId = newEnemy.ObjectId })
		--	newEnemy.WeaponOptions[1] = newEnemy.WeaponOptions[1] .. "_" .. args.GodVFX
	end
	if Enemytype == "boss" then
		thread( mod.SetupBoss, newEnemy)
	end

	SessionMapState.SpawnPointsUsed[spawnOnId] = newEnemy.ObjectId
	thread( UnoccupySpawnPointOnDistance, newEnemy, spawnOnId, 400 )
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = GetGameplayElapsedTimeMultiplier(), ValueChangeType = "Absolute", DataValue = false, DestinationId = newEnemy.ObjectId })
	AddOutgoingDamageModifier( newEnemy, { NonPlayerMultiplier = weaponDataMultipliers.DamageMultiplier })
	AddOutgoingCritModifier( newEnemy, { Chance = weaponDataMultipliers.CritMultiplier })
	newEnemy.SpeedMultiplier = ( newEnemy.SpeedMultiplier or 1 ) + (weaponDataMultipliers.SpeedMultiplier - 1)
	ApplyUnitPropertyChanges( newEnemy, { {
				LifeProperty = "DodgeChance",
				ChangeValue = weaponDataMultipliers.DodgeMultiplier,
				ChangeType = "Add",
				DataValue = false,
			}} )
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = newEnemy.SpeedMultiplier, ValueChangeType = "Multiply", DataValue = false, DestinationId = newEnemy.ObjectId })
	RemoveAutoLockTarget({ Id = newEnemy.ObjectId })
	for i, data in pairs(newEnemy.OutgoingDamageModifiers) do
		if data.NonPlayerMultiplier and data.NonPlayerMultiplier == 0 then
			RemoveValueAndCollapse( newEnemy.OutgoingDamageModifiers, data )	
			break
		end
	end
	
	if team == "player" then
		AddIncomingDamageModifier( newEnemy,
		{
			Name = "PlayerDeathDefense",
			PlayerMultiplier = 0.0,
			Multiplicative = true
		})
		AddIncomingDamageModifier( newEnemy,
		{
			Name = "EnemyDeathDefense",
			NonPlayerMultiplier = 1,
			Multiplicative = true
		})
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "JumpTargetEligible", Value = false })
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "ProjectilesAlwaysPenetrate", Value = true })
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "HomingEligible", Value = false })
		SetScale({ Id = newEnemy.ObjectId, Fraction = weaponDataMultipliers.ScaleMultiplier, Duration = 0 })
		AddEffectBlock({ Id = newEnemy.ObjectId, Name = "OnHitStun" })
		AddEffectBlock({ Id = newEnemy.ObjectId, Name = "OnHitStunHeavy" })
		AddEffectBlock({ Id = newEnemy.ObjectId, Name = "BlindEffect" })
		newEnemy.SummonHealthBarEffect = true
		newEnemy.SkipDamageText = true
		newEnemy.ImmuneToPolymorph = true
		ApplyEffect({ 
			Id = CurrentRun.Hero.ObjectId, 
			DestinationId = newEnemy.ObjectId, 
			EffectName = "Charm",
			DataProperties = { Duration = 3600 },
			})
		if not newEnemy.IgnoreAllyHitPresentation then
			newEnemy.OnHitEvents =
			{
				{
					FunctionName = "AllyHitPresentation",
				}
			}
		end
	else
		AddIncomingDamageModifier( newEnemy,
		{
			Name = "PlayerDeathDefense",
			PlayerMultiplier = 1.0,
			Multiplicative = true
		})
		AddIncomingDamageModifier( newEnemy,
		{
			Name = "EnemyDeathDefense",
			NonPlayerMultiplier = 1,
			Multiplicative = true
		})	
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "JumpTargetEligible", Value = true })
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "ProjectilesAlwaysPenetrate", Value = false })
		SetLifeProperty({ DestinationId = newEnemy.ObjectId, Property = "HomingEligible", Value = true })
		newEnemy.SummonHealthBarEffect = false
		newEnemy.SkipDamageText = false
		newEnemy.ImmuneToPolymorph = false
	end

	MapState.SpellSummons = MapState.SpellSummons or {}
	MapState.SpellSummons = CollapseTable( MapState.SpellSummons )
	table.insert( MapState.SpellSummons, newEnemy )
	GameState.SpellSummons[newEnemy.Name] = (GameState.SpellSummons[newEnemy.Name] or 0) + 1

	return newEnemy
end

modutil.mod.Path.Wrap("LeaveRoom", function(base, currentRun, exitDoor)
	if HeroHasTrait("ShovelRaiseDeadNecroMel") then
		local trait = GetHeroTrait("ShovelRaiseDeadNecroMel")
		if trait.AttackSummons > 1 then
			mod.ReleaseHealthReserve( trait.Reserve * (trait.AttackSummons - 1), "Aspect" )
		end
		trait.AttackSummons = 0
	end
	return base(currentRun, exitDoor)
end)

--Loading the package at every room
modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Zeus" })
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Hera" })
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Poseidon" })
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Demeter" })	
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Apollo" })	
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Aphrodite" })	
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Hephaestus" })
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Hestia" })
	LoadPackages({ Name = "JarlUlsfark-Zombie_Color_Ares" })
	return base(source, args)
end)

modutil.mod.Path.Wrap("Kill", function(base, victim, triggerArgs)
	base(victim, triggerArgs)
	if victim.AlwaysTraitor == true and HeroHasTrait("ShovelRaiseDeadNecroMel") and victim.Name == "Zombie" and triggerArgs.Killed == true then
		local trait = GetHeroTrait("ShovelRaiseDeadNecroMel")
		trait.AttackSummons = trait.AttackSummons - 1
		if trait.AttackSummons > 0 then
			mod.ReleaseHealthReserve( trait.Reserve, "Aspect" )
		end
	end
	if HeroHasTrait("ShovelRaiseDeadNecroMel") and HeroHasTrait("TimedKillBuffBoon") and triggerArgs.SourceProjectile == "ZombieMelee" and triggerArgs.AttackerTable.AlwaysTraitor == true and triggerArgs.Killed == true then
		SessionMapState.TimedBuff = SessionMapState.TimedBuff + 1
		table.insert( SessionMapState.TimedBuffStartTimes, _worldTime )
		local FunctionArgs = 
		{
			Duration = 45,
			ReportValues = { ReportedDuration = "Duration" },
			Fx = "HermesWingsBuff",
		}
		thread(ReduceKillBuff, FunctionArgs )	
		UIScriptsDeferred.KillBuffDirty = true
	end
end)

ModUtil.Path.Wrap("Damage", function(baseFunc, victim, triggerArgs)
	baseFunc(victim, triggerArgs)
	local trait = {}
	if victim ~= CurrentRun.Hero and HeroHasTrait("ShovelRaiseDeadNecroMel") and triggerArgs.AttackerTable.Name == "Zombie" and triggerArgs.AttackerTable.AlwaysTraitor == true then	
		-- Effect of weapon boons
		if HeroHasTrait("PoseidonWeaponBoon") then
			trait = GetHeroTrait("PoseidonWeaponBoon")
			functionArgs = {
				ProjectileName = "PoseidonSplashSplinter",
				CooldownName = "PoseidonSpecial",
				MultihitWeaponWhitelist = 
				{
				},
				MultihitWeaponConditions = 
				{

				},
				MultihitProjectileWhitelist =
				{

				},
				MultihitProjectileConditions =
				{
				},
				Cooldown = 0.033,
				DamageMultiplier = 
				{
					BaseValue = 25/20 * (trait.DamageMultiplier or 1),
				},
			}
			CheckPoseidonSplash(victim, functionArgs, triggerArgs)
		elseif HeroHasTrait("ZeusWeaponBoon") then
			trait = GetHeroTrait("ZeusWeaponBoon")
			functionArgs = {
				Modifier = (trait.ReportedMultiplier or 1)
			}
			local dataProperties = MergeAllTables({
				EffectData["DamageEchoEffect"].EffectData, 
				functionArgs
			})
			ApplyEffect( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = "DamageEchoEffect", DataProperties = dataProperties } )
		elseif HeroHasTrait("HeraWeaponBoon") then
			functionArgs = {
				EffectName = "DamageShareEffect",
			}
			ApplyDamageShare(victim, functionArgs, triggerArgs)
		elseif HeroHasTrait("DemeterWeaponBoon") then
			functionArgs = {
				EffectName = "ChillEffect",
			}
			ApplyRoot(victim, functionArgs, triggerArgs)
		elseif HeroHasTrait("HestiaWeaponBoon") then
			trait = GetHeroTrait("HestiaWeaponBoon")
			functionArgs = {
				EffectName = "BurnEffect",
				NumStacks =  (trait.ReportedDamage or 30)
			}
			ApplyBurn( victim, functionArgs, triggerArgs )
		elseif HeroHasTrait("HephaestusWeaponBoon") then
			trait = GetHeroTrait("HephaestusWeaponBoon")
			functionArgs = {
				Name = "MassiveAttack",
				TraitName = "HephaestusWeaponBoon",
				ProjectileName = "MassiveSlamBlast",
				Cooldown = (trait.ReportedCooldown or 12),
				MultihitProjectileWhitelist ={},
				BlastDelay = 0.08,
				DamageMultiplier = (trait.ReportedMultiplier or 2)
			}
			CheckMassiveAttack( victim, functionArgs, triggerArgs )
		end
		if HeroHasTrait("FocusLightningBoon") then
			trait = GetHeroTrait("FocusLightningBoon")
			functionArgs = 
			{
				ProjectileName = "ProjectileZeusSpark",
				FirstHitOnly = true,
				WindowCount = 3, -- "clip fire cooldown. no more than Count projectiles every Duration"
				WindowDuration = 0.75,
				DamageMultiplier = (trait.ReportedMultiplier or 1)
			}
			CheckZeusProjectile( victim, functionArgs, triggerArgs )
		end
		if HeroHasTrait("SpawnKillBoon") then
			functionArgs = 
			{
				Chance = 0.25,
				Damage = 9999,
				Vfx = "ZeusLightningIris",
				ExcludeProjectileName = "MedeaCurse",
				ReportValues = { ReportedChance = "Chance" },
			}
			CheckSpawnZeusDamage( victim , functionArgs, triggerArgs )
		end
		if HeroHasTrait("AresManaBoon") then
			functionArgs = 
			{
				Chance = 0.2,
				Sound = "/Leftovers/Menu Sounds/CoinFlash",
				Name = "BloodDrop",
				ReportValues = { ReportedDropChance = "Chance" },
			}
			CheckAresManaBloodDrop( victim , functionArgs, triggerArgs )
		end
		--if HeroHasTrait("HestiaManaBoon") then
		--	trait = GetHeroTrait("HestiaManaBoon")
		--	functionArgs = 
		--	{
		--		FirstHitOnly = true,
		--		IsNotEx = false,
		--		ValidWeapons = { "ZombieMelee" },
		--		MultihitProjectileWhitelist = {},
		--		MultihitProjectileConditions = {},
		--		ManaGain = trait.ReportedManaRecovery,
		--		ReportValues = { ReportedManaRecovery = "ManaGain" }
		--	}
		--	CheckManaOnHit( victim , functionArgs, triggerArgs )
		--end
		if HeroHasTrait("SupportingFireBoon") then
			trait = GetHeroTrait("SupportingFireBoon")
			functionArgs = 
			{
				ProjectileName = "ArtemisSupportingFire",
				DamageMultiplier = (trait.ReportedMultiplier or 1),
				Cooldown = 0.167,
				ProjectileCap = 3,
				StartAngle = 180,
				Scatter = 20,
				MultihitProjectileWhitelistLookup = { ProjectileStaffSingle = { Window = 0.25, Count = 3, }, },
				MultihitProjectileWhitelist = { "ProjectileStaffSingle", },
				MultihitProjectileConditions = { ProjectileStaffSingle = { Window = 0.25, Count = 3, }, },
				ReportValues = 
				{ 
					ReportedMultiplier = "DamageMultiplier",
				}
			}
			CheckSupportingFire ( victim, functionArgs, triggerArgs)
		end
		if HeroHasTrait("BlindChanceBoon") then
			trait = GetHeroTrait("BlindChanceBoon")
			local dataProperties = EffectData["BlindEffect"].EffectData
			local target = math.random()
			if trait.ReportedChance > target then
				ApplyEffect( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = "BlindEffect", DataProperties = dataProperties } )
			end
		end
	end
end)

modutil.once_loaded.game(function()
	
	math.randomseed(os.time())
	-- Changing Aspect text
	import "TextEn.lua"
	
	--import "SummonData.lua"

	ShovelRaiseDeadNecroMel = {
		InheritFrom = { "WeaponEnchantmentTrait" },
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 0.9,
			},
			Epic =
			{
				Multiplier = 0.8,
			},
			Heroic =
			{
				Multiplier = 0.7,
			},
			Legendary =
			{
				Multiplier = 0.5,
			},
			Perfect =
			{
				Multiplier = 0.3,
			},
		},
		Icon = "GUI\\Icons\\Shovel",
		RequiredWeapon = "WeaponAxe",
		WeaponKitGrannyModel = "ToolShovel_Mesh",
		ReplacementGrannyModels = 
		{
			Melinoe_Axe_Mesh1 = "ToolShovel_Mesh",
		},
		--WeaponDataOverride =
		--{
		--	WeaponAxe =
		--	{
				--SwapAnimations = {
					--["MelinoeIdle"] = "Shovel_Idle",
					--["MelinoeEquip"] = "Shovel_Idle",
		--		}
		--	},
		--},
		OnWeaponFiredFunctions = {
			ValidWeapons = { "WeaponAxe", "WeaponCast" },
			FunctionName = _PLUGIN.guid .. "." .. "SummonOrCast",
			FunctionArgs = 
			{
				enemy = "Zombie",
				team = "player",
				biome = "Ephyra",
            	type = "regular",
				Reserve = { BaseValue = 10 },
				ReportValues = 
				{ 
					PrimedHealth = "Reserve",
				}
			},
		},
		AttackSummons = 0,
		Reserve = { BaseValue = 10 },
		-- Changing special to Block
		PropertyChanges =
		{
			{
				WeaponName = "WeaponAxe",
				WeaponProperty = "Projectile",
				ChangeValue = "null",
			},
			{
				WeaponName = "WeaponAxe",
				WeaponProperties = {
					ChargeStartAnimation = "Melinoe_Shovel_FireLoop",
					FireGraphic = "Melinoe_Shovel_End",
					SwapOnFire = "WeaponAxe",
					FireFx = "null",
					NumProjectiles = 0,
				},
				ExcludeLinked = true,
			},
			
		},
		StatLines =
		{
			"ShovelRaiseDeadNecroMelStat",
		},
		ExtractValues =
		{
			{
				Key = "PrimedHealth",
				ExtractAs = "PrimedHealth",
				Format = "Absolute",
			},
		},
		FlavorText = "ShovelRaiseDeadNecroMel_FlavorText",
	}

	--OverwriteTableKeys( TraitSetData.Aspects.AxeRecoveryAspect, ShovelRaiseDeadNecroMel)
	TraitData.ShovelRaiseDeadNecroMel = ShovelRaiseDeadNecroMel


	--Adds the new traits to the in-game shop
	import "WeaponShop.lua"

	--Adds god specific VFX for Mel
	import "GodEffects.lua"

	--Add god specific attack animations for summon
	--import "VFXAnimations.lua"

	--Add god specific attacks for summon
	--import "WeaponData.lua"

end)