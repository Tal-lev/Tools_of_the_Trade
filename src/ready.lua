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

	if newMaxHealth > previousMaxHealth and CurrentRun.Hero.ReserveHealthExtra > 0 then
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
		SacrificeHealth({ SacrificeHealth = extraHealth+HealthMissing, IgnoreHealthBuffer = true, IgnoreDamageCap = true, ManuallyTriggered = true })
		CurrentRun.Hero.ReserveHealthExtra = CurrentRun.Hero.ReserveHealthExtra + extraHealth
	else 
		SacrificeHealth({ SacrificeHealth = amount, IgnoreHealthBuffer = true, IgnoreDamageCap = true, ManuallyTriggered = true })
	end
	FrameState.RequestUpdateHealthUI = true
end

function mod.SummonEnemy( triggerArgs, functionArgs )
	IncrementTableValue( SessionMapState, "SpellFired" )
	--GetHeroTrait("ShovelRaiseDeadNecroMel")
	
	local trait = GetHeroTrait("AxeRecoveryAspect")
	trait.AttackSummons = trait.AttackSummons + 1
	
	if trait.AttackSummons > 0 then
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

	local summonArgs = { MaxHealthMultiplier = 1, SpeedMultiplier = 1, ScaleMultiplier = 1, DamageMultiplier = 1}

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
	}
	local enemyData = EnemyData[enemyName]
	local newEnemy = DeepCopyTable( enemyData )
	newEnemy.DefaultAIData.TargetClosest = true
	newEnemy.MaxHealth = newEnemy.MaxHealth
	newEnemy.HealthBarOffsetY = (newEnemy.HealthBarOffsetY or -155 )
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
	
	if Enemytype == "boss" then
		thread( mod.SetupBoss, newEnemy)
	end

	SessionMapState.SpawnPointsUsed[spawnOnId] = newEnemy.ObjectId
	thread( UnoccupySpawnPointOnDistance, newEnemy, spawnOnId, 400 )
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = GetGameplayElapsedTimeMultiplier(), ValueChangeType = "Absolute", DataValue = false, DestinationId = newEnemy.ObjectId })
	AddOutgoingDamageModifier( newEnemy, { NonPlayerMultiplier = 1, Multiplicative = true })
	
	newEnemy.SpeedMultiplier = ( newEnemy.SpeedMultiplier or 1 )
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

	return newEnemy
end

modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	if HeroHasTrait("AxeRecoveryAspect") then
		local trait = GetHeroTrait("AxeRecoveryAspect")
		trait.AttackSummons = 0
	end
	return base(source, args)
end)



modutil.mod.Path.Wrap("Kill", function(base, victim, triggerArgs)
	base(victim, triggerArgs)
	if victim.AlwaysTraitor == true and HeroHasTrait("AxeRecoveryAspect") and victim.Name == "Zombie" and triggerArgs.Killed == true then
		local trait = GetHeroTrait("AxeRecoveryAspect")
		trait.AttackSummons = trait.AttackSummons - 1
		if trait.AttackSummons > 0 then
			mod.ReleaseHealthReserve( trait.Reserve, "Aspect" )
		end
	end
end)

modutil.once_loaded.game(function()


	
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
		Icon = "JarlUlsfark-AspectYoungMel\\AxeAspectYoungMelIcon",
		RequiredWeapon = "WeaponAxe",
		WeaponKitGrannyModel = "ToolShovel_Mesh",
		ReplacementGrannyModels = 
		{
			Melinoe_Axe_Mesh1 = "ToolShovel_Mesh",
		},
		WeaponDataOverride =
		{
			WeaponAxe =
			{
				SwapAnimations = {
					["MelinoeIdle"] = "Shovel_Idle",
				}
			},
		},
		OnWeaponFiredFunctions = {
			ValidWeapons = { "WeaponAxe" },
			FunctionName = _PLUGIN.guid .. "." .. "SummonEnemy",
			FunctionArgs = 
			{
				enemy = "Zombie",
				team = "player",
				biome = "Ephyra",
            	type = "regular",
				Reserve = { BaseValue = 10 },
			},
		},
		OnEnemyDeathFunction = {
			Name = _PLUGIN.guid .. "." .. "SummonDeadHeal",
			FunctionArgs = {
				Reserve = { BaseValue = 10 }
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

		},
		FlavorText = "ShovelRaiseDeadNecroMel_FlavorText",
	}

	OverwriteTableKeys( TraitSetData.Aspects.AxeRecoveryAspect, ShovelRaiseDeadNecroMel)
end)