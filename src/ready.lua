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

local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']
local FliptheArcana = rom.mods['ReadEmAndWeep-Flip_the_Arcana_Mod']
local WrathofOlympus = rom.mods['Wistiti-WrathOfOlympus']
local HermesDuos = rom.mods['Wistiti-HermesDuos']

function mod.ReleaseHealthReserve( amount, source )
	local previousMaxHealth = GetHeroMaxAvailableHealth()
	if CurrentRun.Hero.ReserveHealthSources[source] and CurrentRun.Hero.ReserveHealthSources[source] > 0 then
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
	if triggerArgs.Name == "WeaponAxe" or triggerArgs.Name == "WeaponAxeSpin" then
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
	--Ensures death mini summons don't reserve health
	local toReserve = 0
	local Reserve = functionArgs.Reserve
	local enemyName = functionArgs.enemy
	local team = functionArgs.team
	local biome = functionArgs.biome
	local Enemytype = functionArgs.type
	local ChangeAttackSummonCount = 0

	if (functionArgs.HeraclesCombatMoneyValue or 2) > 0 then
		ChangeAttackSummonCount = 1
		toReserve = 1
		if not CurrentRun.Hero.ReserveHealthSources then
			CurrentRun.Hero.ReserveHealthSources = {}
		end
		if not HeroHasTrait("ShovelNecroMelBloodCostTrait") then
			Reserve = Reserve * math.ceil( CurrentRun.Hero.MaxHealth /100 )
		end
	end

	if triggerArgs.Name == "WeaponAxeSpin" then
		Reserve = Reserve * 4
		biome = "Mourning_Fields"
		enemyName = "Mourner"
	end
	
	--Hammer: Scrap Metal
	if HeroHasTrait("ShovelNecroMelRobotSummonTrait") then
		enemyName = "SentryBot"
		if triggerArgs.Name == "WeaponAxeSpin" then
			enemyName = "AutomatonBeamer"
		end
	end


	--Part1 of Double summon trait, double the cost
	if HeroHasTrait("ShovelNecroMelDoubleSummonTrait") then
		ChangeAttackSummonCount = ChangeAttackSummonCount * 2
		ChangeOmegaAttackSummonCount = ChangeOmegaAttackSummonCount * 2
		Reserve = Reserve * 2
	end
	--Part1 of Double summon trait, double the cost
	if HeroHasTrait("DoubleExManaBoon") and triggerArgs.Name == "WeaponAxeSpin" then
		ChangeAttackSummonCount = ChangeAttackSummonCount * 2
		ChangeOmegaAttackSummonCount = ChangeOmegaAttackSummonCount * 2
		Reserve = Reserve * 2
	end
	trait.AttackSummons = trait.AttackSummons + ChangeAttackSummonCount
	if trait.AttackSummons > 1 and toReserve > 0 then
		if CurrentRun.Hero.Health > Reserve then
			trait.CurrentlyReserved = trait.CurrentlyReserved + Reserve
			mod.ReserveHealth( Reserve, "Aspect")
		else
			local unitId = CurrentRun.Hero.ObjectId
			PlaySound({ Name = "/Leftovers/Menu Sounds/LevelUpFlash", Id = unitId, ManagerCap = 46 })
			Flash({ Id = unitId, Speed = 0.85, MinFraction = 0.7, MaxFraction = 0.0, Color = Color.White, Duration = 0.15, ExpireAfterCycle = true })
			thread( InCombatText, unitId, "Not enough Health!", 0.5 , { SkipShadow = true } )
			trait.AttackSummons = trait.AttackSummons - ChangeAttackSummonCount
			return
		end
	end

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
		DoubleDamageMultiplier = functionArgs.DoubleDamageMultiplier or 0, --Flip the Arcana Doom
		CritMultiplier = functionArgs.CritMultiplier or 0,
		DodgeMultiplier = functionArgs.DodgeMultiplier or 0,
		HeraclesCombatMoneyValue = functionArgs.HeraclesCombatMoneyValue or 2, --used in deathminisummon trait
		IncomingDamageMultiplier = functionArgs.IncomingDamageMultiplier or 1, --used in discordant bell
	}
	local trait = {}
	summonArgs.MaxHealthMultiplier =  summonArgs.MaxHealthMultiplier * (( GetHeroMaxAvailableHealth() + (CurrentRun.Hero.ReserveHealthSources["Aspect"] or 0)) / 30)
	if triggerArgs.Name == "WeaponAxe" or "WeaponAxeSpin" then
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
	--Apollo: 
	if HeroHasTrait("HighHealthOffenseBoon") then
		trait = GetHeroTrait("HighHealthOffenseBoon")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.05) - 1
		if CurrentRun.Hero.Health > (GetHeroMaxAvailableHealth() * trait.ReportedThreshold) then
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.05) - 1
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
	--Aphrodite: Wispy Wiles
	if HeroHasTrait("ElementalDodgeBoon") then
		trait = GetHeroTrait("ElementalDodgeBoon")
		summonArgs.DodgeMultiplier = summonArgs.DodgeMultiplier + ((trait.ReportedDodgeBonus or 0.02) * CurrentRun.Hero.Elements.Air) 
	end
	if HeroHasTrait("CirceShrinkTrait") then
		trait = GetHeroTrait("CirceShrinkTrait")
		summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (trait.ReportedDodgeChance or 0)
		summonArgs.DodgeMultiplier = summonArgs.DodgeMultiplier + (trait.ReportedBaseSpeed or 1) -1
		summonArgs.ScaleMultiplier = summonArgs.ScaleMultiplier - 0.25
	end
	if HeroHasTrait("EncounterStartOffenseBuffBoon") then
		if CurrentRun.Hero.ActiveEffects and CurrentRun.Hero.ActiveEffects.EncounterStartOffense then
			trait = GetHeroTrait("EncounterStartOffenseBuffBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 2) -1
		end
	end
	if HeroHasTrait("MaxHealthDamageBoon") then
		trait = GetHeroTrait("MaxHealthDamageBoon")
		local maxhealth = ( CurrentRun.Hero.MaxHealth or 30)
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.ReportedMultiplier or 0.0010) * maxhealth)
	end
	--Keepsake: White Antler
	if HeroHasTrait("LowHealthCritKeepsake") then
		trait = GetHeroTrait("LowHealthCritKeepsake")
		summonArgs.CritMultiplier = summonArgs.CritMultiplier + (trait.ReportedCritBonus or 0.2)
	end
	--Keepsake: Lion Fang
	if HeroHasTrait("DecayingBoostKeepsake") then
		trait = GetHeroTrait("DecayingBoostKeepsake")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.CurrentKeepsakeDamageBonus or 1.3) -1
	end
	--Keepsake: Discordant Bell
	if HeroHasTrait("EscalatingKeepsake") then
		trait = GetHeroTrait("EscalatingKeepsake")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.EscalatingKeepsakeGrowthPerRoom * CurrentRun.EncounterDepth )
		summonArgs.IncomingDamageMultiplier = summonArgs.IncomingDamageMultiplier + (trait.EscalatingKeepsakeGrowthPerRoom * CurrentRun.EncounterDepth )
	end
	--Arcana: Strength
	if HeroHasTrait("LowHealthBuffMetaUpgrade") and not HasLastStand( CurrentRun.Hero ) then
		trait = GetHeroTrait("LowHealthBuffMetaUpgrade")
		summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.ReportedModifier or 1.2) -1 )
	end
	
	if FliptheArcana then
		--Flip the Arcana: Performance
		if HeroHasTrait("ReversedLowManaDamageBonusMetaUpgrade") then
			trait = GetHeroTrait("ReversedLowManaDamageBonusMetaUpgrade")
			if CurrentRun.Hero.Health > (GetHeroMaxAvailableHealth() * (trait.ReportedThreshold or 0.85)) then
				summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedMultiplier or 1.10) - 1
			else
				summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (((trait.ReportedMultiplier or 1.10) - 1) / 10)
			end
		end
		--Flip the Arcana: Retribution
		if HeroHasTrait("ReversedMagicCritMetaUpgrade") then
			trait = GetHeroTrait("ReversedMagicCritMetaUpgrade")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.DisplayValue or 0.01) * GetTotalSpentShrinePoints())
			summonArgs.IncomingDamageMultiplier = summonArgs.IncomingDamageMultiplier + 0.35
		end
		--Flip the Arcana: Beauty
		if HeroHasTrait("ReversedChanneledBlockMetaUpgrade") then
			trait = GetHeroTrait("ReversedChanneledBlockMetaUpgrade")
			summonArgs.DodgeMultiplier = summonArgs.DodgeMultiplier + (trait.ReportedDodgeChance or 0.04) 
		end
		--Flip the Arcana: The Muses
		if HeroHasTrait("ReversedUniqueGodMetaUpgrade") then
			trait = GetHeroTrait("ReversedUniqueGodMetaUpgrade")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (((trait.ReportedMultiplier or 1.03) -1) * (CurrentRun.Hero.UniqueGodCount or 0)) 
		end
		--Flip the Arcana: The Tides
		if HeroHasTrait("ReversedPerfectClearBoostMetaUpgrade") then
			trait = GetHeroTrait("ReversedPerfectClearBoostMetaUpgrade")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.AccumulatedDamageBonus or 1) -1 
		end
		--Flip the Arcana: The Beasts
		if HeroHasTrait("ReversedArtemisKeepsakeMetaUpgrade") then
			trait = GetHeroTrait("ReversedArtemisKeepsakeMetaUpgrade")
			summonArgs.CritMultiplier = summonArgs.CritMultiplier + (trait.ReportedCritBonus or 0.1) 
		end
		--Flip the Arcana: Doom
		if HeroHasTrait("ReversedTradeOffMetaUpgrade") and GameState.FatedStatus == "Fated" then
			trait = GetHeroTrait("ReversedTradeOffMetaUpgrade")	
			summonArgs.DoubleDamageMultiplier = summonArgs.DoubleDamageMultiplier + (trait.FatedDDChance or 0.1 )
		end
	end
	if ZagreusJourney then
		--Zagreus Journey Keepsake: Skull Earring
		if HeroHasTrait("zannc-SharedKeepsakePort-LowHealthDamageKeepsake") and (CurrentRun.Hero.Health < (GetHeroMaxAvailableHealth() * 0.35)) then
			trait = GetHeroTrait("zannc-SharedKeepsakePort-LowHealthDamageKeepsake")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.ReportedMultiplier or 1.2) -1)
		end
		--Zagreus Journey Keepsake: Pierced Butterfly
		if HeroHasTrait("zannc-SharedKeepsakePort-PerfectClearDamageBonusKeepsake") then
			trait = GetHeroTrait("zannc-SharedKeepsakePort-PerfectClearDamageBonusKeepsake")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.AccumulatedDamageBonus or 1) -1)
		end
		--Zagreus Journey Keepsake: Shattered Shackle
		if HeroHasTrait("zannc-SharedKeepsakePort-SisyphusVanillaKeepsake") and (not HeroHasTrait("ZeusWeaponBoon")) and (not HeroHasTrait("HeraWeaponBoon")) and (not HeroHasTrait("PoseidonWeaponBoon")) and (not HeroHasTrait("DemeterWeaponBoon")) and (not HeroHasTrait("ApolloWeaponBoon")) and (not HeroHasTrait("AphroditeWeaponBoon")) and (not HeroHasTrait("HephaestusWeaponBoon")) and (not HeroHasTrait("HestiaWeaponBoon")) and (not HeroHasTrait("AresWeaponBoon")) then
			trait = GetHeroTrait("zannc-SharedKeepsakePort-SisyphusVanillaKeepsake")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + ((trait.ReportedWeaponMultiplier or 1.5) -1)
		end
	end
	--Traits impacting Non EX only
	if enemyName == "Zombie" or enemyName == "SentryBot" then
		--Arcana: The Huntress
		if HeroHasTrait("LowManaDamageMetaupgrade") and GetHeroMaxAvailableMana() > CurrentRun.Hero.Mana then
			trait = GetHeroTrait("LowManaDamageMetaupgrade")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedDamageBoost or 1.3) -1
		end
		--Hephaestus: Martial Art
		if HeroHasTrait("ElementalDamageBoon") then
			trait = GetHeroTrait("ElementalDamageBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (((trait.ReportedTotalDamageChange or 1.05) -1) * (CurrentRun.Hero.Elements.Earth or 0))  
		end
		--Flip the Arcana: Bloodlust
		if FliptheArcana and HeroHasTrait("ReversedChanneledCastMetaUpgrade") then
			trait = GetHeroTrait("ReversedChanneledCastMetaUpgrade")
			summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (1 - (trait.ReportedWeaponMultiplier or 0.9))
		end
	-- Traits impacting omega weapon only
	elseif enemyName == "Mourner" or enemyName == "AutomatonBeamer" then
		--Keepsake: Blackened Fleece
		if HeroHasTrait("DamagedDamageBoostKeepsake") then
			trait = GetHeroTrait("DamagedDamageBoostKeepsake")
			if CurrentRun.TotalDamageTaken >= (trait.ExRunDamagedThreshold or 250) then
				summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ExRunDamagedMultiplier or 1.2) -1
			end
		end
		--Chaos: Chant Blessing
		if HeroHasTrait("ChaosOmegaDamageBlessing") then
			trait = GetHeroTrait("ChaosOmegaDamageBlessing")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedTotalDamageChange or 1.3) -1
		end
		--Demeter: Weed Killer
		if HeroHasTrait("SlowExAttackBoon") then
			trait = GetHeroTrait("SlowExAttackBoon")
			summonArgs.DamageMultiplier = summonArgs.DamageMultiplier + (trait.ReportedTotalDamageChange or 1.5) -1
		end
		--Hermes: Racing Thoughts
		if HeroHasTrait("HermesSpecialBoon") then
			trait = GetHeroTrait("HermesSpecialBoon")
			summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (1 - (trait.ReportedWeaponMultiplier or 0.85))
		end
		--Arcana: The Sorceress
		if FliptheArcana and HeroHasTrait("ChannelSlowMetaUpgrade") then
			trait = GetHeroTrait("ChannelSlowMetaUpgrade")
			summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + (1 - (trait.ReportedWeaponMultiplier or 0.8))
		end
	end



	local offset = CalcOffset(math.rad(GetAngle({Id = CurrentRun.Hero.ObjectId})), 100 )
	local invaderSpawnPoint = SpawnObstacle({ Name = "InvisibleTarget", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = offset.X, OffsetY = offset.Y, ForceToValidLocation = true})
	

	summonArgs.SpawnPointId = invaderSpawnPoint
	summonArgs.TryUseRequiredSpawnPoint = true
	summonArgs.team = team
	summonArgs.type = Enemytype
	local newEnemy = mod.CreateEnemy( enemyName, summonArgs)
	--Part2 of Double summon trait, double the summon
	if HeroHasTrait("ShovelNecroMelDoubleSummonTrait") then
		wait(0.1)
		newEnemy = mod.CreateEnemy( enemyName, summonArgs)
	end
	--Apollo: Exceptional Talent Part 2
	if HeroHasTrait("DoubleExManaBoon") and triggerArgs.Name == "WeaponAxeSpin" then
		wait(0.1)
		newEnemy = mod.CreateEnemy( enemyName, summonArgs)
		if HeroHasTrait("ShovelNecroMelDoubleSummonTrait") then
			wait(0.1)
			newEnemy = mod.CreateEnemy( enemyName, summonArgs)
		end
	end
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
		DoubleDamageMultiplier = args.DoubleDamageMultiplier or 0,
		CritMultiplier = args.CritMultiplier or 0,
		DodgeMultiplier = args.DodgeMultiplier or 0,
		HeraclesCombatMoneyValue = args.HeraclesCombatMoneyValue or 2, --used in deathminisummon trait
		IncomingDamageMultiplier = args.IncomingDamageMultiplier or 1,
	}
	local enemyData = EnemyData[enemyName]
	local newEnemy = DeepCopyTable( enemyData )
	newEnemy.DefaultAIData.TargetClosest = true
	newEnemy.PostAggroAI = "AttackerAI"
	newEnemy.StartAggroed = true
	newEnemy.SkipMapStateAggroTracking = true
	newEnemy.SurroundAIKey = "SummonedUnit"
	newEnemy.MaxHealth = newEnemy.MaxHealth * weaponDataMultipliers.MaxHealthMultiplier
	newEnemy.HealthBarOffsetY = newEnemy.HealthBarOffsetY * weaponDataMultipliers.ScaleMultiplier
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
		newEnemy.HeraclesCombatMoneyValue = weaponDataMultipliers.HeraclesCombatMoneyValue
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
		LoadPackages({ Name = "JarlUlsfark-" .. enemyData.Name .. "_Color_" .. args.GodVFX })
		SetThingProperty({ Property = "GrannyTexture", Value = TextureName , DestinationId = newEnemy.ObjectId })
	end
	if Enemytype == "boss" then
		thread( mod.SetupBoss, newEnemy)
	end

	SessionMapState.SpawnPointsUsed[spawnOnId] = newEnemy.ObjectId
	thread( UnoccupySpawnPointOnDistance, newEnemy, spawnOnId, 400 )
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = GetGameplayElapsedTimeMultiplier(), ValueChangeType = "Absolute", DataValue = false, DestinationId = newEnemy.ObjectId })
	AddOutgoingDamageModifier( newEnemy, { NonPlayerMultiplier = weaponDataMultipliers.DamageMultiplier })
	AddOutgoingCritModifier( newEnemy, { Chance = weaponDataMultipliers.CritMultiplier })
	AddOutgoingDoubleDamageModifier(newEnemy, {Chance = weaponDataMultipliers.DoubleDamageMultiplier})
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
			NonPlayerMultiplier = IncomingDamageMultiplier,
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

--Circe: Turning to a Simple Form
function mod.CircePolymorph( victim, functionArgs, triggerArgs )
	if not RandomChance( functionArgs.Chance * GetTotalHeroTraitValue( "LuckMultiplier", { IsMultiplier = true }) ) then
		return
	end
	if victim.ImmuneToPolymorph or victim.IsPolymorphed then
		return
	end
	if not CheckCooldown( "CircePolymorph" , functionArgs.Cooldown ) then
		return
	end
	if victim == CurrentRun.Hero then
		return
	end
	if HeroHasTrait("ExPolymorphBoon") then
		TraitUIActivateTrait( GetHeroTrait("ExPolymorphBoon"), { FlashOnActive = true, Duration = functionArgs.Cooldown })
	end
	-- Kludgey, should move the effect data off of the polymorph projectile and into EffectData.
	local duration = 0
	local effectName = "PolymorphTag"
	local dataProperties = MergeAllTables({
		EffectData[effectName].DataProperties, 
		functionArgs.EffectArgs
	})
	duration = dataProperties.Duration + GetTotalHeroTraitValue( "PolymorphDuration" )
	dataProperties.Duration = duration

	SessionMapState.PolymorphIgnores[victim.ObjectId] = true
	ApplyEffect( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = effectName, DataProperties = dataProperties } )
	
	effectName = "PolymorphDamageTaken"
	local dataProperties = MergeAllTables({
		EffectData[effectName].DataProperties, 
		functionArgs.EffectArgs
	})
	dataProperties.Duration = duration
	dataProperties.Modifier = GetTotalHeroTraitValue("PolymorphDamageMultiplier", { IsMultiplier = true })
	ApplyEffect( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = effectName, DataProperties = dataProperties } )
end

--Icarus: Explosive Intent
function mod.CheckIcarusExplosion( victim, functionArgs, triggerArgs )
	if ProjectileHasUnitHit( triggerArgs.ProjectileId, "IcarusBlast") and (triggerArgs.SourceWeapon == nil or not functionArgs.MultihitWeaponWhitelistLookup[triggerArgs.SourceWeapon])  then
		return
	end
	local passesMultihitCheck = true

	if triggerArgs.SourceWeapon ~= nil and functionArgs.MultihitWeaponWhitelistLookup[triggerArgs.SourceWeapon] and functionArgs.MultihitWeaponConditions[triggerArgs.SourceWeapon] then
		local conditions = functionArgs.MultihitWeaponConditions[triggerArgs.SourceWeapon]
		if conditions.Cooldown and not CheckCooldown( "IcarusBlast", conditions.Cooldown ) then
			return
		end
		if conditions.Window and not CheckCountInWindow("IcarusBlast", conditions.Window, conditions.Count ) then
			return
		end
	end
	
	ProjectileRecordUnitHit( triggerArgs.ProjectileId, "IcarusBlast" )

	CreateProjectileFromUnit({ 
		Name = functionArgs.ProjectileName, 
		Id = CurrentRun.Hero.ObjectId,
		DestinationId = victim.ObjectId, 
		DamageMultiplier = functionArgs.DamageMultiplier,
		FireFromTarget = true,
		DataProperties = 
		{
			ImpactVelocity = force
		}
	})
end

function mod.CheckOmegaBlitzTrigger ( victim, functionArgs, triggerArgs )
	if victim and not victim.IsDead and victim.ActiveEchoes and victim.ActiveEffectsAtDamageStart and victim.ActiveEffectsAtDamageStart.DamageEchoEffect then	
		for effectName, echoData in pairs(victim.ActiveEchoes) do
			echoData.Amount = echoData.Threshold
			DamageEchoTrigger( victim, effectName, echoData.Payoff, GetTotalHeroTraitValue( "DamageEchoOmegaDamageBonus", { IsMultiplier = true }), echoData.Cooldown )
			CheckTriggerAllDamageEcho( victim )
		end
	end
end

function mod.SetupCopyAbility()
	wait(0.1)
	ShowLobUI()
	local HasCopy = 0
	local HasCopyTwo = 0
	for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
		if string.find(key, "CopyDisplayBoon") then
			HasCopy = HasCopy + 1
		elseif string.find(key, "CopyTwoDisplayBoon") then
			HasCopyTwo = HasCopyTwo + 1
		end
	end
	if not HeroHasTrait("DummyCopyDisplayBoon") and HasCopy == 0 then
		AddTraitToHero({ TraitName = "DummyCopyDisplayBoon" })
	end
	wait(0.1)
	if not HeroHasTrait("DummyCopyTwoDisplayBoon") and HasCopyTwo == 0 then
		AddTraitToHero({ TraitName = "DummyCopyTwoDisplayBoon" })
	end
	--UpdateTraitNumber( trait )
end

function mod.CopyAbility (victim, functionArgs, triggerArgs)
	local Changed = "null"
	local Location = "null" 
	if (not HeroHasTrait("TabletKirbyMegaAmmoTrait")) and (triggerArgs.SourceProjectile ~= "CopyBolt") then
		return
	end
	local CopyTrait = "DummyCopyDisplayBoon"
	local TraitsToRemove = {}
	if victim.Name == "Mage" or victim.Name == "Mage_Elite" then
		Changed = "Mage"
		Location = "BiomeF"
	elseif victim.Name == "Guard" or victim.Name == "Guard_Elite" then
		Changed = "Guard"
		Location = "BiomeF"
	elseif victim.Name == "Guard2" or victim.Name == "Guard2_Elite" then
		Changed = "Guardtwo"
		Location = "BiomeG"
	elseif victim.Name == "Brawler" or victim.Name == "Brawler_Elite" then
		Changed = "Brawler"
		Location = "BiomeF"
	elseif victim.Name == "SiegeVine" or victim.Name == "SiegeVine_Elite" then
		Changed = "SiegeVine"
		Location = "BiomeF"
	elseif victim.Name == "Screamer" or victim.Name == "Screamer_Elite" then
		Changed = "Screamer"
		Location = "BiomeF"
	elseif victim.Name == "Radiator" or victim.Name == "Radiator_Elite" then
		Changed = "Radiator"
		Location = "BiomeF"
	elseif victim.Name == "TreantTail" or victim.Name == "TreantTail_Elite" then
		Changed = "TreantTail"
		Location = "BiomeF"
	elseif victim.Name == "Treant" then
		Changed = "Treant"
		Location = "BiomeF"
	elseif victim.Name == "FogEmitter" or victim.Name == "FogEmitter_Elite" then
		Changed = "FogEmitter"
		Location = "BiomeF"
	elseif victim.Name == "Wisp" or victim.Name == "Wisp_Elite" then
		Changed = "Wisp"
		Location = "BiomeF"
	elseif victim.Name == "ZombieAssassin_Miniboss" then
		Changed = "ZombieAssassin_Miniboss"
		Location = "BiomeN"
	elseif victim.Name == "LightRanged" or victim.Name == "LightRanged_Elite" then
		Changed = "LightRanged"
		Location = "BiomeF"
	elseif victim.Name == "Hecate" then
		if math.random() < 0.5 then
			Changed = "HecateOne"
		else
			Changed = "HecateTwo"
		end
		Location = "BiomeF"
	elseif victim.Name == "Turtle" or victim.Name == "Turtle_Elite" then
		Changed = "Turtle"
		Location = "BiomeG"
	elseif victim.Name == "FishSwarmer" or victim.Name == "FishSwarmer_Elite" then
		Changed = "FishSwarmer"
		Location = "BiomeG"
	elseif victim.Name == "FishmanMelee" or victim.Name == "FishmanMelee_Elite" or victim.Name == "FishmanMelee2" then	
		Changed = "FishmanMelee"
		Location = "BiomeG"
	elseif victim.Name == "FishmanRanged" or victim.Name == "FishmanRanged_Elite" then
		Changed = "FishmanRanged"
		Location = "BiomeG"
	elseif victim.Name == "WaterUnit" or victim.Name == "WaterUnit_Elite" then
		Changed = "WaterUnit"
		Location = "BiomeG"
	elseif victim.Name == "Radiator2" or victim.Name == "Radiator2_Elite" then
		Changed = "Radiatortwo"
		Location = "BiomeG"
	elseif victim.Name == "Jellyfish" or victim.Name == "Jellyfish_Elite" then
		Changed = "Jellyfish"
		Location = "BiomeG"
	elseif victim.Name == "Octofish" or victim.Name == "Octofish_Elite" or victim.Name == "Octofish_SuperElite" then
		Changed = "Octofish"
		Location = "BiomeG"
	elseif victim.Name == "CrawlerMiniboss" then
		Changed = "CrawlerMiniboss"
		Location = "BiomeG"
	elseif victim.Name == "WaterUnitMiniboss" then
		Changed = "WaterUnitMiniboss"
		Location = "BiomeG"
	elseif victim.Name == "ThiefMineLayer" or victim.Name == "ThiefMineLayer_Elite" then
		Changed = "ThiefMineLayer"
		Location = "BiomeG"
	elseif victim.Name == "SirenDrummer" then
		Changed = "SirenDrummer"
		Location = "BiomeG"
	elseif victim.Name == "SirenKeytarist" then
		Changed = "SirenKeytarist"
		Location = "BiomeG"
	elseif victim.Name == "Scylla" then
		Changed = "ScyllaOne"
		Location = "BiomeG"
	elseif victim.Name == "BloodlessNaked" or victim.Name == "BloodlessNaked_Elite" or victim.Name =="HadesBloodlessNaked" or victim.Name == "HadesBloodlessNakedElite" then
		Changed = "BloodlessNaked"
		Location = "BiomeB"
	elseif victim.Name == "BloodlessGrenadier" or victim.Name == "BloodlessGrenadier_Elite" or victim.Name =="HadesBloodlessGrenadier" or victim.Name == "HadesBloodlessGrenadierElite" then
		Changed = "BloodlessGrenadier"
		Location = "BiomeB"
	elseif victim.Name == "BloodlessSelfDestruct" or victim.Name == "BloodlessSelfDestruct_Elite" or victim.Name =="HadesBloodlessSelfDestruct" or victim.Name == "HadesBloodlessSelfDestructElite" then
		Changed = "BloodlessSelfDestruct"
		Location = "BiomeB"
	elseif victim.Name == "BloodlessPitcher" or victim.Name == "BloodlessPitcher_Elite" or victim.Name =="HadesBloodlessPitcher" or victim.Name == "HadesBloodlessPitcherElite" then
		Changed = "BloodlessPitcher"
		Location = "BiomeB"
	elseif victim.Name == "BloodlessWaveFist" or victim.Name == "BloodlessWaveFist_Elite" or victim.Name =="HadesBloodlessWaveFist" or victim.Name == "HadesBloodlessWaveFistElite" then
		Changed = "BloodlessWaveFist"
		Location = "BiomeB"
	elseif victim.Name == "SpreadShotUnit" or victim.Name == "SpreadShotUnit_Elite" or victim.Name =="HadesSpreadShotUnit" or victim.Name == "HadesSpreadShotUnitElite" then
		Changed = "SpreadShotUnit"
		Location = "BiomeB"
	elseif victim.Name == "CorruptedShadeSmall" or victim.Name == "CorruptedShadeSmall_Elite" then
		Changed = "CorruptedShadeSmall"
		Location = "BiomeH"
	elseif victim.Name == "CorruptedShadeMedium" or victim.Name == "CorruptedShadeMedium_Elite" then
		Changed = "CorruptedShadeMedium"
		Location = "BiomeH"
	elseif victim.Name == "CorruptedShadeLarge" or victim.Name == "CorruptedShadeLarge_Elite" then
		Changed = "CorruptedShadeLarge"
		Location = "BiomeH"
	elseif victim.Name == "FogEmitter2" or victim.Name == "FogEmitter2_Elite" then
		Changed = "FogEmittertwo"
		Location = "BiomeH"
	elseif victim.Name == "BrokenHearted" or victim.Name == "BrokenHearted_Elite" then
		Changed = "BrokenHearted"
		Location = "BiomeH"
	elseif victim.Name == "LycanSwarmer" or victim.Name == "LycanSwarmer_Elite" or victim.Name == "LycanSwarmer2" then
		Changed = "LycanSwarmer"
		Location = "BiomeH"
	elseif victim.Name == "Lycanthrope" or victim.Name == "Lycanthrope_Elite" then
		Changed = "Lycanthrope"
		Location = "BiomeH"
	elseif victim.Name == "DespairElemental" or victim.Name == "DespairElemental_Elite" then	
		Changed = "DespairElemental"
		Location = "BiomeH"
	elseif victim.Name == "Screamer2" or victim.Name == "Screamer2_Elite" or victim.Name == "Screamer2_SuperElite" then	
		Changed = "Screamertwo"
		Location = "BiomeH"
	elseif victim.Name == "TreantTail2" or victim.Name == "TreantTail2_Elite" or victim.Name == "Treant2Tail_SuperElite" then
		Changed = "TreantTailtwo"
		Location = "BiomeH"
	elseif victim.Name == "Treant2" or victim.Name == "Treant2_Elite" or victim.Name == "Treant2_SuperElite" then
		Changed = "Treanttwo"
		Location = "BiomeH"
	elseif victim.Name == "Lamia" or victim.Name == "Lamia_Elite" or victim.Name == "Lamia_SuperElite" then
		Changed = "Lamia"
		Location = "BiomeH"
	elseif victim.Name == "Lamia_Miniboss"then
		Changed = "Lamia_Miniboss"
		Location = "BiomeH"
	elseif victim.Name == "Vampire" or victim.Name == "Vampire_Elite" or victim.Name == "Vampire_SuperElite" then
		Changed = "Vampire"
		Location = "BiomeH"
	elseif victim.Name == "InfestedCerberus" then
		if math.random() < 0.5 then
			Changed = "InfestedCerberusOne"
		else
			Changed = "InfestedCerberusTwo"
		Location = "BiomeH"
		end
	elseif victim.Name == "Mourner" or victim.Name == "Mourner_Elite" then
		Changed = "Mourner"	
		Location = "BiomeH"
	elseif victim.Name == "Lovesick" then
		Changed = "Lovesick"	
		Location = "BiomeH"
	elseif victim.Name == "SwarmerClockwork" or victim.Name == "SwarmerClockwork_Elite" then
		Changed = "SwarmerClockwork"
		Location = "BiomeI"
	elseif victim.Name == "ClockworkHeavyMelee" or victim.Name == "ClockworkHeavyMelee_Elite" or victim.Name == "ClockworkHeavyMelee_SuperElite" then
		Changed = "ClockworkHeavyMelee"
		Location = "BiomeI"
	elseif victim.Name == "GoldElemental" or victim.Name == "GoldElemental_Elite" or victim.Name == "GoldElemental_SuperElite" then
		Changed = "GoldElemental"
		Location = "BiomeI"
	elseif victim.Name == "GoldElemental_MiniBoss" then
		Changed = "GoldElemental_MiniBoss"
		Location = "BiomeI"
	elseif victim.Name == "TimeElemental" or victim.Name == "TimeElemental_Elite" then
		Changed = "TimeElemental"
		Location = "BiomeI"
	elseif victim.Name == "SatyrLancer" or victim.Name == "SatyrLancer_Elite" then
		Changed = "SatyrLancer"
		Location = "BiomeI"
	elseif victim.Name == "SatyrRatCatcher" or victim.Name == "SatyrRatCatcher_Elite" or victim.Name == "SatyrRatCatcher_SuperElite" then
		Changed = "SatyrRatCatcher"
		Location = "BiomeI"
	elseif victim.Name == "SatyrRatCatcher_Miniboss" then
		Changed = "SatyrRatCatcher_Miniboss"
		Location = "BiomeI"
	elseif victim.Name == "Crawler" or victim.Name == "Crawler_Elite" then
		Changed = "Crawler"
		Location = "BiomeI"
	elseif victim.Name == "SatyrCultist" or victim.Name == "SatyrCultist_Elite" then
		Changed = "SatyrCultist"
		Location = "BiomeIHouse"
	elseif victim.Name == "Chronos" then
		if math.random() < 0.5 then
			Changed = "ChronosOne"
		else
			Changed = "ChronosTwo"
		end
		Location = "BiomeIHouse"
	elseif victim.Name == "Zagreus" then
		if math.random() < 0.5 then
			Changed = "ZagreusOne"
		else
			Changed = "ZagreusTwo"
		end
		Location = "BiomeC"
	elseif victim.Name == "Carrion" or victim.Name == "Carrion_Elite" then
		Changed = "Carrion"
		Location = "BiomeN"
	elseif victim.Name == "Zombie" or victim.Name == "Zombie_Elite"  then
		Changed = "Zombie"
		Location = "BiomeN"
	elseif victim.Name == "ZombieHeavyRanged" or victim.Name == "ZombieHeavyRanged_Elite" then
		Changed = "ZombieHeavyRanged"
		Location = "BiomeN"
	elseif victim.Name == "ZombieAssassin" or victim.Name == "ZombieAssassin_Elite" then
		Changed = "ZombieAssassin"
		Location = "BiomeN"
	elseif victim.Name == "MudmanEye" or victim.Name == "MudmanEye_Elite" or victim.Name == "MudmanEye2" then
		Changed = "MudmanEye"
		Location = "BiomeN"
	elseif victim.Name == "Mudman" or victim.Name == "Mudman_Elite" or victim.Name == "Mudman2" then
		Changed = "Mudman"
		Location = "BiomeN"
	elseif victim.Name == "SoulPylon" then
		Changed = "SoulPylon"
		Location = "BiomeN"
	elseif victim.Name == "ZombieSpawner" or victim.Name == "ZombieSpawner_Elite" then
		Changed = "ZombieSpawner"
		Location = "BiomeN"
	elseif victim.Name == "Boar" or victim.Name == "MiniBossBoar" or victim.Name == "Boar_SuperElite" then
		Changed = "Boar"
		Location = "BiomeN"
	elseif victim.Name == "SatyrCrossbow" then
		Changed = "SatyrCrossbow"
		Location = "BiomeN"
	elseif victim.Name == "Sheep_Explosive" or victim.Name == "Sheep_Explosive_Elite" then
		Changed = "Sheep_Explosive"
		Location = "BiomeN"
	elseif victim.Name == "Sheep_Zombie" or victim.Name == "Sheep_Zombie_Elite" then
		Changed = "Sheep_Zombie"
		Location = "BiomeN"
	elseif victim.Name == "Polyphemus" then
		Changed = "PolyphemusOne"
		Location = "BiomeN"
	elseif victim.Name == "ZombieCrewman" or victim.Name == "ZombieCrewman_Elite" then
		Changed = "ZombieCrewman"
		Location = "BiomeO"
	elseif victim.Name == "Scimiterror" or victim.Name == "Scimiterror_Elite" then
		Changed = "Scimiterror"
		Location = "BiomeO"
	elseif victim.Name == "Stickler" or victim.Name == "Stickler_Elite" then
		Changed = "Stickler"
		Location = "BiomeO"
	elseif victim.Name == "Swab" or victim.Name == "Swab_Elite" then
		Changed = "Swab"
		Location = "BiomeO"
	elseif victim.Name == "Drunk" or victim.Name == "Drunk_Elite" then
		Changed = "Drunk"
		Location = "BiomeO"
	elseif victim.Name == "HarpyCutter" or victim.Name == "HarpyCutter_Elite" then
		Changed = "HarpyCutter"
		Location = "BiomeO"
	elseif victim.Name == "WaterElemental" or victim.Name == "WaterElemental_Elite" then
		Changed = "WaterElemental"
		Location = "BiomeO"
	elseif victim.Name == "Mage2" or victim.Name == "Mage2_Elite" then
		Changed = "Magetwo"
		Location = "BiomeO"
	elseif victim.Name == "Captain" or victim.Name == "MiniBossCaptain" or victim.Name == "Captain_SuperElite" then
		Changed = "Captain"
		Location = "BiomeO"
	elseif victim.Name == "CharybdisTentacle" or victim.Name == "CharybdisTentacle_Elite" then
		Changed = "CharybdisTentacle"
		Location = "BiomeO"
	elseif victim.Name == "Eris" then
		if math.random() < 0.5 then
			Changed = "ErisOne"
		else
			Changed = "ErisTwo"
		end
		Location = "BiomeOBoss"
	elseif victim.Name == "ZombieOlympus" or victim.Name == "ZombieOlympus_Elite" then
		Changed = "ZombieOlympus"
		Location = "BiomeP"
	elseif victim.Name == "SentryBot" or victim.Name == "SentryBot_Elite" then
		Changed = "SentryBot"
		Location = "BiomeP"
	elseif victim.Name == "AutomatonBeamer" or victim.Name == "AutomatonBeamer_Elite" then
		Changed = "AutomatonBeamer"
		Location = "BiomeP"
	elseif victim.Name == "AutomatonEnforcer" or victim.Name == "AutomatonEnforcer_Elite" then
		Changed = "AutomatonEnforcer"
		Location = "BiomeP"
	elseif victim.Name == "HarpyDropper" or victim.Name == "HarpyDropper_Elite" then
		Changed = "HarpyDropper"
		Location = "BiomeP"
	elseif victim.Name == "SatyrCrossbow2" or victim.Name == "SatyrCrossbow2_Elite" then
		Changed = "SatyrCrossbowtwo"
		Location = "BiomeP"
	elseif victim.Name == "SatyrLancer2" or victim.Name == "SatyrLancer2_Elite" then
		Changed = "SatyrLancertwo"
		Location = "BiomeP"
	elseif victim.Name == "SatyrSapper" or victim.Name == "SatyrSapper_Elite" then
		Changed = "SatyrSapper"
		Location = "BiomeP"
	elseif victim.Name == "Dragon" or victim.Name == "Dragon_Elite" or victim.Name == "Dragon_SuperElite" then
		Changed = "Dragon"
		Location = "BiomeP"
	elseif victim.Name == "Dragon_MiniBoss" or victim.Name == "Dragon_SuperElite" then
		Changed = "Dragon_MiniBoss"
		Location = "BiomeP"
	elseif victim.Name == "Talos" then
		Changed = "Talos"
		Location = "BiomeP"
	elseif victim.Name == "Heracles" then
		Changed = "HeraclesOne"
		Location = "BiomeP"
	elseif victim.Name == "Prometheus" then
		if math.random() < 0.5 then
			Changed = "PrometheusOne"
		else
			Changed = "PrometheusTwo"
		end
		Location = "BiomeP"
	elseif victim.Name == "Simple" or victim.Name == "Simple_Elite" or victim.Name == "Simple2" then
		Changed = "Simple"
		Location = "BiomeQ"
	elseif victim.Name == "Stalker" or victim.Name == "Stalker_Elite" then
		Changed = "Stalker"
		Location = "BiomeQ"
	elseif victim.Name == "Brute" or victim.Name == "Brute_Elite" or victim.Name == "Brute2" then
		Changed = "Brute"
		Location = "BiomeQ"
	elseif victim.Name == "Mati" or victim.Name == "Mati_Elite" then
		Changed = "Mati"
		Location = "BiomeQ"
	elseif victim.Name == "DragonBurrower" or victim.Name == "DragonBurrower_Elite" then
		Changed = "DragonBurrower"
		Location = "BiomeQ"
	elseif victim.Name == "EarthElemental" or victim.Name == "EarthElemental_Elite" then
		Changed = "EarthElemental"
		Location = "BiomeQ"
	elseif victim.Name == "Brute_Miniboss" then
		Changed = "Brute_Miniboss"
		Location = "BiomeQ"
	elseif victim.Name == "Stalker_Miniboss" then
		Changed = "Stalker_Miniboss"
		Location = "BiomeQ"
	elseif victim.Name == "TyphonTail" then
		Changed = "TyphonTail"
		Location = "BiomeQ"
	elseif victim.Name == "Eyeball" then
		Changed = "Eyeball"
		Location = "BiomeQ"
	elseif victim.Name == "TyphonEye" then
		Changed = "TyphonEye"
		Location = "BiomeQ"
	elseif victim.Name == "TyphonHeadEgg01" or victim.Name == "TyphonHeadEgg02" or victim.Name == "TyphonHeadEgg03" or victim.Name == "TyphonHeadEgg04" or victim.Name == "TyphonHeadEgg05" then
			Changed = "TyphonEgg"
			Location = "BiomeQ"
	elseif victim.Name == "TyphonHead" then
		if math.random() < 0.5 then
			Changed = "TyphonHeadOne"
		else
			Changed = "TyphonHeadTwo"
		end
		Location = "BiomeQEnding"
	elseif ZagreusJourney then
		if victim.Name == "HadesSwarmer" or victim.Name == "HadesSwarmerElite" then
			Changed = "HadesSwarmer"
			Location = "HadesBiomesFxOriginal"
		elseif victim.Name == "LightSpawner" or victim.Name == "LightSpawnerElite" then
			Changed = "LightSpawner"
			Location = "HadesBiomesFxOriginal"
		elseif victim.Name == "PunchingBagUnit" or victim.Name == "PunchingBagUnitElite" then
			Changed = "PunchingBagUnit"
			Location = "HadesBiomesFxOriginal"
		elseif victim.Name == "HadesLightRanged" or victim.Name == "HadesLightRangedElite" then
			Changed = "HadesLightRanged"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "HeavyRanged" or victim.Name == "HeavyRangedElite" then
			Changed = "HeavyRanged"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "HeavyMelee" or victim.Name == "HeavyMeleeElite" then
			Changed = "HeavyMelee"
			Location = "BiomeI"
		elseif victim.Name == "HadesThiefMineLayer" or victim.Name == "HadesThiefMineLayerElite" then
			Changed = "HadesThiefMineLayer"
			Location = "BiomeG"
		elseif victim.Name == "DisembodiedHand" or victim.Name == "DisembodiedHandElite" then
			Changed = "DisembodiedHand"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "WretchAssassinMiniboss" then
			Changed = "WretchAssassinMiniboss"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "HeavyRangedSplitterMiniboss" then
			Changed = "HeavyRangedSplitterMiniboss"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "Harpy" then
			if math.random() < 0.5 then
				Changed = "HarpyOneOne"
			else
				Changed = "HarpyOneTwo"
			end
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "Harpy2" then
			Changed = "HarpytwoOne"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "Harpy3" then
			if math.random() < 0.5 then
				Changed = "HarpythreeOne"
			else
				Changed = "HarpythreeTwo"
			end
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "RangedBurrower" or victim.Name == "RangedBurrowerElite" then
			Changed = "RangedBurrower"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "CrusherUnit" or victim.Name == "CrusherUnitElite" then
			Changed = "CrusherUnit"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "FreezeShotUnit" or victim.Name == "FreezeShotUnitElite" then
			Changed = "FreezeShotUnit"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "HitAndRunUnit" or victim.Name == "HitAndRunUnitElite" then
			Changed = "HitAndRunUnit"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "SpreadShotUnitMiniboss" then
			Changed = "SpreadShotUnitMiniboss"
			Location = "BiomeB"
		elseif victim.Name == "HydraHeadDartmaker" or victim.Name == "HydraHeadImmortal" then
			Changed = "HydraHeadDartmaker"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "HydraHeadLavamaker" or victim.Name == "HydraHeadImmortalLavamaker" then
			Changed = "HydraHeadLavamaker"
			Location = "BiomeN"
		elseif victim.Name == "HydraHeadSlammer" or victim.Name == "HydraHeadImmortalSlammer" then
			Changed = "HydraHeadSlammer"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "HydraHeadWavemaker" or victim.Name == "HydraHeadImmortalWavemaker" then
			Changed = "HydraHeadWavemaker"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "HydraHeadSummoner" or victim.Name == "HydraHeadImmortalSummoner" then
			Changed = "HydraHeadSummoner"
			Location = "AsphodelModsNikkelMHadesBiomes"
		elseif victim.Name == "ShadeNaked" or victim.Name == "ShadeNakedElite" then
			Changed = "ShadeNaked"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ShadeSpearUnit" or victim.Name == "ShadeSpearUnitElite" then
			Changed = "ShadeSpearUnit"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ShadeSwordUnit" or victim.Name == "ShadeSwordUnitElite" then
			Changed = "ShadeSwordUnit"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ShadeShieldUnit" or victim.Name == "ShadeShieldUnitElite" then
			Changed = "ShadeShieldUnit"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ShadeBowUnit" or victim.Name == "ShadeBowUnitElite" then
			Changed = "ShadeBowUnit"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ShieldRanged" or victim.Name == "ShieldRangedElite" then
			Changed = "ShieldRanged"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "FlurrySpawner" or victim.Name == "FlurrySpawnerElite" then
			Changed = "FlurrySpawner"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "ChariotSuicide" or victim.Name == "ChariotSuicideElite" then
			Changed = "ChariotSuicide"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "Chariot" or victim.Name == "ChariotElite" then
			Changed = "Chariot"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "SplitShotUnit" or victim.Name == "SplitShotUnitElite" then
			Changed = "SplitShotUnit"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "Minotaur" then
			Changed = "MinotaurOne"
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "Theseus" then
			if math.random() < 0.5 then
				Changed = "TheseusOne"
			else
				Changed = "TheseusTwo"
			end
			Location = "ElysiumModsNikkelMHadesBiomes"
		elseif victim.Name == "SatyrRanged" or victim.Name == "SatyrRangedElite" then
			Changed = "SatyrRanged"
			Location = "StyxModsNikkelMHadesBiomes"
		elseif victim.Name == "RatThug" or victim.Name == "RatThugElite" then
			Changed = "RatThug"
			Location = "StyxModsNikkelMHadesBiomes"
		elseif victim.Name == "HadesCrawler" or victim.Name == "HadesCrawlerElite" then
			Changed = "HadesCrawler"
			Location = "BiomeI"
		elseif victim.Name == "HeavyRangedForked" or victim.Name == "HeavyRangedForkedElite" then
			Changed = "HeavyRangedForked"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "SatyrRangedMiniboss" then
			Changed = "SatyrRangedMiniboss"
			Location = "StyxModsNikkelMHadesBiomes"
		elseif victim.Name == "RatThugMiniboss" then
			Changed = "RatThugMiniboss"
			Location = "StyxModsNikkelMHadesBiomes"
		elseif victim.Name == "HadesCrawlerMiniBoss" then
			Changed = "HadesCrawlerMiniBoss"
			Location = "BiomeG"
		elseif victim.Name == "HeavyRangedForkedMiniboss" then
			Changed = "HeavyRangedForkedMiniboss"
			Location = "TartarusModsNikkelMHadesBiomes"
		elseif victim.Name == "Hades" then
			if math.random() < 0.5 then
			Changed = "HadesOne"
			Location = "StyxModsNikkelMHadesBiomes"
			else
				Changed = "HadesTwo"
				Location = "BiomeI"
			end
		elseif victim.Name == "Charon" then
			if math.random() < 0.5 then
				Changed = "CharonOne"
				Location = "CharonModsNikkelMHadesBiomes"
			else
				Changed = "CharonTwo"
				Location = "CharonModsNikkelMHadesBiomes"
			end
		end
	end
	if Changed ~= "null" then
		for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
			if string.find(key, "CopyDisplayBoon") then
				table.insert(TraitsToRemove, 1, key)
				CopyTrait = key
			end
		end
		for key,value in pairs(TraitsToRemove) do
			RemoveTrait(CurrentRun.Hero, value, {SkipNewTraitHighlight = true})
		end
		local trait = GetHeroTrait("TabletofPeaceKirbyMel")
		trait.Location = Location
		wait(0.1)
		if HeroHasTrait("TabletKirbyMegaAmmoTrait") then
			AddTraitToHero({ TraitName = Changed .. "CopyDisplayBoon", SkipNewTraitHighlight = true })	
		else
			AddTraitToHero({ TraitName = Changed .. "CopyDisplayBoon" })	
		end
		LoadPackages({Name = Location})
		ResetAmmo( CurrentRun.Hero, GetWeaponData( CurrentRun.Hero, "WeaponLob" ))
		CurrentRun.Hero.Ammo.WeaponLob = GetMaxAmmo("WeaponLob")
		thread( UpdateAmmoUI )
		wait(0.1)
		if HeroHasTrait("ShadeNakedCopyDisplayBoon") then
			mod.HandleShadeNakedCopy()
		elseif HeroHasTrait("TyphonEggCopyDisplayBoon") then
			mod.HandleTyphonEggCopy()
		end
	end
end

function mod.ReleaseCopyAbility ( triggerArgs, functionArgs )
	ManaDelta( -20 )
	local args = 
	{
		ProjectileName = "KirbyHammerAxeNova",
		DamageMultiplier = functionArgs.DamageMultiplier or 1,
	}
	local trait = GetHeroTrait("TabletofPeaceKirbyMel")

	CreateProjectileFromUnit({ Name = args.ProjectileName, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = args.DamageMultiplier })
	local TraitsToRemove = {} 
	local TempSecondCopy = "null"
	local TempSecondAmmo = 0
	local TempSecondLocation = "null"
	for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
		if string.find(key, "CopyDisplayBoon") then
			table.insert(TraitsToRemove, 1, key)
			TempSecondCopy = key
			TempSecondAmmo = CurrentRun.Hero.Ammo.WeaponLob
			TempSecondLocation = trait.Location
		elseif string.find(key, "CopyTwoDisplayBoon") then
			table.insert(TraitsToRemove, 1, key)
		end
	end
	for key,value in pairs(TraitsToRemove) do
		RemoveTrait(CurrentRun.Hero, value, {SkipNewTraitHighlight = true})
	end	
	wait(0.1)
	local StartPos, EndPos = string.find(TempSecondCopy, "CopyDisplayBoon")
	local StartTrait = string.sub(TempSecondCopy, 1, StartPos - 1)
	if not HeroHasTrait("TabletKirbyInfiniteAmmoTrait") then
		AddTraitToHero({ TraitName = StartTrait .. "CopyTwoDisplayBoon", SkipNewTraitHighlight = true })
	else
		AddTraitToHero({ TraitName = "DummyCopyTwoDisplayBoon", SkipNewTraitHighlight = true })
		TempSecondCopy = "DummyCopyDisplayBoon"
	end
	wait(0.1)
	AddTraitToHero({ TraitName = trait.SecondCopy, SkipNewTraitHighlight = true })
	trait.Location = trait.SecondLocation
	trait.SecondLocation = TempSecondLocation
	if not HeroHasTrait("TabletKirbyMegaAmmoTrait") then
		CurrentRun.Hero.Ammo.WeaponLob = trait.SecondAmmo
	else
		CurrentRun.Hero.Ammo.WeaponLob = 1
	end
	if TempSecondCopy ~= "null" then
		trait.SecondCopy = TempSecondCopy
		trait.SecondAmmo = TempSecondAmmo
	end
	SetWeaponProperty({ WeaponName = "WeaponLob", DestinationId = CurrentRun.Hero.ObjectId, Property = "Enabled", Value = true })
	thread( UpdateAmmoUI )
	wait(0.1)
	if HeroHasTrait("ShadeNakedCopyDisplayBoon") then
		mod.HandleShadeNakedCopy()
	elseif HeroHasTrait("TyphonEggCopyDisplayBoon") then
		mod.HandleTyphonEggCopy()
	end
end

function mod.CopyNoAmmo()
	local TraitsToRemove = {} 
	local CopyTrait = "Dummy"
	for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
		if string.find(key, "CopyDisplayBoon") then
			table.insert(TraitsToRemove, 1, key)
			CopyTrait = key
		end
	end
	for key,value in pairs(TraitsToRemove) do
		RemoveTrait(CurrentRun.Hero, value, {SkipNewTraitHighlight = true})
	end	
	wait(0.1)
	if not HeroHasTrait("TabletKirbyInfiniteAmmoTrait") then
		AddTraitToHero({ TraitName = "DummyCopyDisplayBoon", SkipNewTraitHighlight = true })
	else
		AddTraitToHero({ TraitName = CopyTrait, SkipNewTraitHighlight = true })
	end
	UpdateWeaponAmmo("WeaponLob", 1, {} )
	wait(0.1)
	thread( InCombatText, CurrentRun.Hero.ObjectId, "Copy Spent", 0.5 , { SkipShadow = true } )
	ResetAmmo( CurrentRun.Hero, GetWeaponData( CurrentRun.Hero, "WeaponLob" ))
	PlaySound({ Name = "/SFX/Player Sounds/MelSkullsAmmoBounce", Id = CurrentRun.Hero.ObjectId })
end

function mod.ReloadAmmo(weaponData)
	if HeroHasTrait("DummyCopyDisplayBoon") then
		ReloadAmmo(weaponData)
	else
		UpdateWeaponAmmo("WeaponLob", 1, {} )
	end
end

function mod.UnequipCopyAbility (weaponData, functionArgs, triggerArgs)
	local TraitsToRemove = {} 
	for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
		if string.find(key, "CopyDisplayBoon") or string.find(key, "CopyTwoDisplayBoon") then
			table.insert(TraitsToRemove, 1, key)
		end
	end
	for key,value in pairs(TraitsToRemove) do
		RemoveTrait(CurrentRun.Hero, value)
	end	
end

function mod.ProjectileSpawnUnitOnDeath( projectileData, triggerArgs )
	if SessionMapState.HandlingDeath or ( triggerArgs and triggerArgs.BlockSpawns ) then
		return
	end

	local newSpawnData = EnemyData[projectileData.SpawnName]
	if newSpawnData == nil then
		DebugAssert({ Condition = false, Text = "Projectile trying to spawn non-existant enemy." })
		return
	end

	-- if new spawn would send you over Active Cap, skip it
	local newSpawnActiveCapWeight = newSpawnData.ActiveCapWeight or 1

	local encounter = CurrentRun.CurrentRoom.Encounter
	if encounter ~= nil and encounter.ActiveEnemyCap ~= nil and GetActiveEnemyCount(encounter) + newSpawnActiveCapWeight > encounter.ActiveEnemyCap then
		return
	end

	local spawnPointId = SpawnObstacle({ Name = "InvisibleTarget", LocationX = triggerArgs.LocationX, LocationY = triggerArgs.LocationY, Group = "Scripting" })
	if IsLocationBlocked({ Id = spawnPointId }) then
		Destroy({ Id = spawnPointId })
		return
	end
	local newUnit = DeepCopyTable(newSpawnData)
	newUnit.BlocksLootInteraction = false
	newUnit.AlwaysTraitor = true
	newUnit.Charmed = true
	newUnit.RequiredKill = false
	newUnit.ObjectId = SpawnUnit({ Name = projectileData.SpawnName, DestinationId = spawnPointId, Group = "Standing" })

	if projectileData.SpawnBounceOffVictim and triggerArgs.TriggeredByTable ~= nil then
		ApplyUpwardForce({ Id = newUnit.ObjectId, Speed = projectileData.SpawnBounceOffVictimUpwardVelocity or 2200, SelfApplied = true })
		ApplyForce({ Id = newUnit.ObjectId, Speed = projectileData.SpawnBounceOffVictimVelocity or 650, Angle = triggerArgs.Angle + 180, SelfApplied = true })
	end

	if projectileData.SpawnsSkipActivatePresentation then
		newUnit.UseActivatePresentation = false
	end
	
	SetupUnit( newUnit )

	Destroy({ Id = spawnPointId })
end

function mod.KirbyFireAura( weaponData, functionArgs, triggerArgs )
	CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier })
end

function mod.HandleShadeNakedCopy()
	local TraitsToRemove = {}
	if HeroHasTrait("ShadeNakedCopyDisplayBoon") then
		if HeroHasTrait("ShadeSpearUnitCopyDisplayBoon") or HeroHasTrait("ShadeSwordUnitCopyDisplayBoon") or HeroHasTrait("ShadeShieldUnitCopyDisplayBoon") or HeroHasTrait("ShadeBowUnitCopyDisplayBoon") then
			for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
				print("In key,value of traitdictionary")
				if string.find(key, "CopyDisplayBoon") then
					if key == "ShadeSpearUnitCopyDisplayBoon" or key == "ShadeSwordUnitCopyDisplayBoon" or key == "ShadeShieldUnitCopyDisplayBoon" or key == "ShadeBowUnitCopyDisplayBoon" then
						table.insert(TraitsToRemove, 1, key)
					end
				end
			end
			for key,value in pairs(TraitsToRemove) do
				RemoveTrait(CurrentRun.Hero, value, {SkipNewTraitHighlight = true})
			end
		end
		local ShadeOptions = {"ShadeSpearUnitCopyDisplayBoon", "ShadeSwordUnitCopyDisplayBoon", "ShadeShieldUnitCopyDisplayBoon", "ShadeBowUnitCopyDisplayBoon"}
		local RandomIndex = math.random(#ShadeOptions)
		local ChosenOption = ShadeOptions[RandomIndex]
		AddTraitToHero({TraitName = ChosenOption})
	end
end

function mod.HandleTyphonEggCopy()
	local TraitsToRemove = {}
	if HeroHasTrait("TyphonEggCopyDisplayBoon") then
		if HeroHasTrait("SimpleCopyDisplayBoon") or HeroHasTrait("StalkerCopyDisplayBoon") or HeroHasTrait("BruteCopyDisplayBoon") then
			for key,value in pairs(CurrentRun.Hero.TraitDictionary) do
				print("In key,value of traitdictionary")
				if string.find(key, "CopyDisplayBoon") then
					if key == "SimpleCopyDisplayBoon" or key == "StalkerCopyDisplayBoon" or key == "BruteCopyDisplayBoon" then
						table.insert(TraitsToRemove, 1, key)
					end
				end
			end
			for key,value in pairs(TraitsToRemove) do
				RemoveTrait(CurrentRun.Hero, value, {SkipNewTraitHighlight = true})
			end
		end
		local ShadeOptions = {"SimpleCopyDisplayBoon", "StalkerCopyDisplayBoon", "BruteCopyDisplayBoon"}
		local RandomIndex = math.random(#ShadeOptions)
		local ChosenOption = ShadeOptions[RandomIndex]
		AddTraitToHero({TraitName = ChosenOption})
	end
end

function mod.KirbyAddArmor(weaponData, functionArgs, triggerArgs)
	local trait = GetHeroTrait("TabletofPeaceKirbyMel")
	if trait.CopyArmorLocation < 20 then
		trait.CopyArmorLocation = trait.CopyArmorLocation + functionArgs.armorGained
		AddArmor(functionArgs.armorGained)
	end
end

modutil.mod.Path.Wrap("LeaveRoom", function(base, currentRun, exitDoor)
	if HeroHasTrait("ShovelRaiseDeadNecroMel") then
		local trait = GetHeroTrait("ShovelRaiseDeadNecroMel")
		if trait.AttackSummons > 1 then
			mod.ReleaseHealthReserve( trait.CurrentlyReserved, "Aspect" )
		end
		trait.AttackSummons = 0
		trait.CurrentlyReserved = 0
	elseif HeroHasTrait("TabletofPeaceKirbyMel") then
		local trait = GetHeroTrait("TabletofPeaceKirbyMel")
		trait.CopyArmorLocation = 0
	end
	return base(currentRun, exitDoor)
end)

--Loading the package at every room
modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	LoadPackages({ Name ="JarlUlsfark-Tools_of_the_Trade"})
	if ZagreusJourney then
		LoadPackages({ Name ="JarlUlsfark-Tools_of_the_Trade_ZJcompat"})
	end
	if CurrentRun and CurrentRun.Hero then
		if HeroHasTrait("TabletofPeaceKirbyMel") then
			local trait = GetHeroTrait("TabletofPeaceKirbyMel")
			if trait.location ~= "null" then
				LoadPackages({Name = trait.Location})
			end
			if trait.SecondLocation ~= "null" then
				LoadPackages({Name = trait.SecondLocation})
			end
			if HeroHasTrait("TyphonEggCopyDisplayBoon") then
				mod.HandleTyphonEggCopy()
			elseif ZagreusJourney and HeroHasTrait("ShadeNakedCopyDisplayBoon") then
				mod.HandleShadeNakedCopy()
			end
		end
	end
	return base(source, args)
end)

modutil.mod.Path.Wrap("Kill", function(base, victim, triggerArgs)
	base(victim, triggerArgs)
	if victim.AlwaysTraitor == true and HeroHasTrait("ShovelRaiseDeadNecroMel") and (victim.Name == "Zombie" or victim.Name == "Mourner" or victim.Name == "SentryBot" or victim.Name == "AutomatonBeamer") and triggerArgs.Killed == true then
		local trait = GetHeroTrait("ShovelRaiseDeadNecroMel")
		local Reserve = trait.Reserve
		if victim.HeraclesCombatMoneyValue > 0 then --to ensure death mini summons don't release health
			trait.AttackSummons = trait.AttackSummons - 1
			if trait.AttackSummons > 0 then
				wait((math.random(0, 8) * 0.05))
				if not HeroHasTrait("ShovelNecroMelBloodCostTrait") then
					Reserve = Reserve * math.ceil(CurrentRun.Hero.MaxHealth/100)
				end
				if victim.Name == "Zombie" or victim.Name == "SentryBot" then
					trait.CurrentlyReserved = trait.CurrentlyReserved - Reserve
					mod.ReleaseHealthReserve( Reserve, "Aspect" )
				elseif victim.Name == "Mourner" or victim.Name == "AutomatonBeamer" then
					trait.CurrentlyReserved = trait.CurrentlyReserved - (Reserve * 4)
					mod.ReleaseHealthReserve( (Reserve * 4), "Aspect" )
				end
			end
			if HeroHasTrait("ShovelNecroMelDeathminiSummonTrait") then
				local functionArgs = 
				{
					enemy = "Zombie",
					team = "player",
					biome = "Ephyra",
					type = "regular",
					Reserve = 10,
					MaxHealthMultiplier = 0.5, 
					ScaleMultiplier = 0.5, 
					DamageMultiplier = 0.5,
					HeraclesCombatMoneyValue = 0,
				} 
				mod.SummonEnemy( triggerArgs, functionArgs )
			end
		end
	
		--if victim.ScaleMultiplier > 0.5 then
	end
	if HeroHasTrait("ShovelRaiseDeadNecroMel") and triggerArgs and triggerArgs.SourceProjectile and triggerArgs.AttackerTable and (triggerArgs.SourceProjectile == "ZombieMelee" or triggerArgs.SourceProjectile == "MournerRampage" or triggerArgs.SourceProjectile == "SentryBotBolt" or triggerArgs.SourceProjectile == "SentryBotVent" or triggerArgs.SourceProjectile == "AutomatonBeamBolt" or triggerArgs.SourceProjectile == "AutomatonOrbit") and triggerArgs.AttackerTable.AlwaysTraitor == true and triggerArgs.Killed == true then
		if HeroHasTrait("TimedKillBuffBoon") then
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
		if HeroHasTrait("BloodDropRevengeBoon") then
			local trait = GetHeroTrait("BloodDropRevengeBoon")
			local functionArgs = 
			{
				Name = "BloodDrop",
				DoubleChance = (trait.DoubleChance or 0.25)
			}
			CreateBloodDrop( victim, functionArgs )
		end
	end
end)

ModUtil.Path.Wrap("Damage", function(baseFunc, victim, triggerArgs)
	--For Apollo Double attack boon, which is buggy
	--local originaltriggerArgs = triggerArgs
	--For Stupid Sheep!
	if HeroHasTrait("TabletofPeaceKirbyMel") and victim and (victim.Name == "Sheep_Explosive" or victim.Name == "Sheep_Zombie" or victim.Name == "Sheep_Sick") then
		local trait = GetHeroTrait("TabletofPeaceKirbyMel")
		functionArgs = {},
		mod.CopyAbility(victim, functionArgs, triggerArgs)
	end
	local trait = {}
	local DamageAmount = triggerArgs.DamageAmount
	local ModifiedNow = 0
	--For adding base damage directly into the hit
	if victim ~= CurrentRun.Hero and HeroHasTrait("ShovelRaiseDeadNecroMel") and triggerArgs.AttackerTable and triggerArgs.AttackerTable.AlwaysTraitor == true and (triggerArgs.AttackerTable.Name == "Zombie" or triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "SentryBot" or triggerArgs.AttackerTable.Name == "AutomatonBeamer") then	
		--Ares: Vicious Strike
		if HeroHasTrait("AresWeaponBoon") then
			if (not victim.ActiveEffects) or (not victim.ActiveEffects.AresStatus) then
				trait = GetHeroTrait("AresWeaponBoon")
				triggerArgs.DamageAmount = triggerArgs.DamageAmount + 5
				functionArgs = 
				{
					TextStartColor = Color.AresDamageLight,
					TextColor = Color.AresDamage,
					HitSimSlowParametersFalseTraitName = "StaffRaiseDeadAspect",
					SimSlowDistanceThreshold = 180,
					HitSimSlowCooldown = 0.8,
					HitSimSlowParameters =
					{
						{ ScreenPreWait = 0.02, Fraction = 0.13, LerpTime = 0 },
						{ ScreenPreWait = 0.10, Fraction = 1.0, LerpTime = 0.05 },
					},
				}
				AresRendApplyPresentation( victim, triggerArgs, functionArgs )
				local dataProperties = EffectData["AresStatus"].EffectData 
				ApplyEffect ( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = "AresStatus", ImpactAngle = math.rad(triggerArgs.ImpactAngle), DataProperties = dataProperties } )
				--Ares: Profuse Bleeding
				if HeroHasTrait("RendBloodDropBoon") then
					CheckGenerateAresSword( victim )
				end
			end
		end
		--Aphrodite: Secret Crush
		if HeroHasTrait("FocusRawDamageBoon") then
			trait = GetHeroTrait("FocusRawDamageBoon")
			triggerArgs.DamageAmount = triggerArgs.DamageAmount + (trait.ReportedDamage / 10)
		end
		--Hestia: Slow Cooker
		if HeroHasTrait("ElementalBaseDamageBoon") then
			trait = GetHeroTrait("ElementalBaseDamageBoon")
			triggerArgs.DamageAmount = triggerArgs.DamageAmount + ((trait.ReportedTotalDamageChange or 2) * (CurrentRun.Hero.Elements.Fire or 0) / 10 )
		end	
		if not triggerArgs.AttackerTable.TotTModified then
			triggerArgs.AttackerTable.TotTModified = 1
			ModifiedNow = 1
			--Ares: Grievous Blow
			if HeroHasTrait("AresStatusDoubleDamageBoon") and victim.ActiveEffects and victim.ActiveEffects.AresStatus then
				trait = GetHeroTrait("AresStatusDoubleDamageBoon")
				if not triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers then
					triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers = {}
				end
				funtionArgs = 
				{
					Name = "Del",
					ValidActiveEffects = {"AresStatus"},
					Multiplicative = true,
					Chance = trait.ReportedChance
				}
				table.insert( triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers, funtionArgs )
			end
			--Ares: Mutual Destruction
			if HeroHasTrait("MissingHealthCritBoon") then
				trait = GetHeroTrait("MissingHealthCritBoon")
				if not triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers then
					triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers = {}
				end
				funtionArgs = 
				{
					Name = "Del",
					Chance = trait.ReportedMultiplier * (GetHeroMaxAvailableHealth() - CurrentRun.Hero.Health)
				}
				table.insert( triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers, funtionArgs )
			end
			--Artemis: Lethal Snare
			if HeroHasTrait("InsideCastCritBoon") and victim.ActiveEffects and victim.ActiveEffects.ImpactSlow then
				trait = GetHeroTrait("InsideCastCritBoon")
				table.insert(triggerArgs.AttackerTable.OutgoingCritModifiers, {Name = "Del", Chance = trait.ReportedCritBonus or 0.1})
			end
			--Aphrodite: Sweet Surrender
			if HeroHasTrait("WeakVulnerabilityBoon") and victim.ActiveEffects and HasVulnerabilityGenusEffect( victim, "Weak") then
				trait = GetHeroTrait("WeakVulnerabilityBoon")
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ( trait.ReportedModifier or 1.1 ) })
			end
			--Hephaestus: Heavy Metal
			if HeroHasTrait("HeavyArmorBoon") and CurrentRun.Hero.HealthBuffer then
				trait = GetHeroTrait("HeavyArmorBoon")
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ((trait.ReportedBonus or 0.2) * ((CurrentRun.Hero.HealthBuffer or 0)/100)  + 1)})
			end
			--Hephaestus: Molten Touch
			if HeroHasTrait("AntiArmorBoon") and victim.HealthBuffer and victim.HealthBuffer > 0 then
				trait = GetHeroTrait("AntiArmorBoon")
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (trait.ReportedWeaponMultiplier or 1.4 )})
			end
			--Arcana: The Furies
			if HeroHasTrait("InsideCastBuffMetaUpgrade") and victim.ActiveEffects and victim.ActiveEffects.ImpactSlow then
				trait = GetHeroTrait("InsideCastBuffMetaUpgrade")
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (trait.ReportedModifier or 1.2) })
			end
			--Arcana: Origination
			if HeroHasTrait("EffectVulnerabilityMetaUpgrade") and victim.VulnerabilityEffects and TableLength( victim.VulnerabilityEffects ) >= 2 then
				trait = GetHeroTrait("EffectVulnerabilityMetaUpgrade")	
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (trait.ReportedDamageBoost or 1.25 )})
			end
			--Keepsake: Evil Eye
			if HeroHasTrait("DeathVengeanceKeepsake") and victim and GetGenusName(victim) == GameState.CauseOfDeath then
				trait = GetHeroTrait("DeathVengeanceKeepsake")	
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (trait.ReportedWeaponMultiplier or 1.2 )})
			end
		end
		if FliptheArcana then
			--Flip the Arcana: Victory 
			if HeroHasTrait("ReversedPerfectPowerMetaUpgrade") then
				trait = GetHeroTrait("ReversedPerfectPowerMetaUpgrade")
				if triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "AutomatonBeamer" then
					triggerArgs.DamageAmount = triggerArgs.DamageAmount + ((trait.FlipTheArcanaPowerPerStack or 1) * (trait.FlipTheArcanaCurrentBonusStacks or 0) / 10)
				end
				game.CallFunctionName("ReadEmAndWeep-Flip_the_Arcana_Mod.CheckPerfectPower", victim, {}, triggerArgs)
			end
			--Flip the Arcana: Famine
			if HeroHasTrait("ReversedRarityBoostMetaUpgrade") then
				trait = GetHeroTrait("ReversedRarityBoostMetaUpgrade")
				functionArgs = 
				{
					Chance = trait.ReportedChance,
					Damage = 9999,
					Vfx = "DemeterBossIceShatter",
					ExcludeProjectileName = "MedeaCurse",
					ReportValues = { ReportedChance = "Chance" },
				}
				CheckSpawnZeusDamage( victim , functionArgs, triggerArgs )
			end
			if ModifiedNow == 1 then
				--Flip the Arcana: The Strategist
				if HeroHasTrait("ReversedStatusVulnerabilityMetaUpgrade") then
					trait = GetHeroTrait("ReversedStatusVulnerabilityMetaUpgrade")	
					if not victim.VulnerabilityEffects or (victim.VulnerabilityEffects and TableLength( victim.VulnerabilityEffects ) < 1) then
						table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ((trait.NoStatusBonusDamage or 0.38 ) + 1)})
					elseif TableLength( victim.VulnerabilityEffects ) == 1 then
						table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (((trait.NoStatusBonusDamage or 0.38 ) / 2 ) + 1)})
					end
				end	
				--Flip the Arcana: The Cyclops
				if HeroHasTrait("ReversedSprintShieldMetaUpgrade") and victim.Health == victim.MaxHealth then
					trait = GetHeroTrait("ReversedSprintShieldMetaUpgrade")
					table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ((trait.FirstHitMultiplier or 0.25 ) + 1)})
				end
				--Flip the Arcana: The Sirens
				if HeroHasTrait("ReversedCrowdDamageMetaUpgrade") then
					local trait = GetHeroTrait("ReversedCrowdDamageMetaUpgrade")
					if game.CallFunctionName("ReadEmAndWeep-Flip_the_Arcana_Mod.GetNumberofEnemies") >= trait.FlipTheArcanaCrowdThreshold then
						table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ((trait.FlipTheArcanaCrowdDamage or 0.15 ) + 1)})
					end
				end
				--Flip the Arcana: The Final Farewell
				if HeroHasTrait("ReversedFullDefianceMetaUpgrade") and CurrentRun.Hero.LastStands and CurrentRun.Hero.MaxLastStands and (CurrentRun.Hero.MaxLastStands) > 0 and (TableLength( CurrentRun.Hero.LastStands ) >= CurrentRun.Hero.MaxLastStands) then
					local trait = GetHeroTrait("ReversedFullDefianceMetaUpgrade")
					table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = ((trait.FlipTheArcanaFullLastStandDamageMultiplier or 0.2 ) + 1)})
				end
				--Flip the Arcana: The Trapper
				if HeroHasTrait("ReversedLowHealthCritMetaUpgrade") then
					local trait = GetHeroTrait("ReversedCrowdDamageMetaUpgrade")
					if CurrentRun.Hero.Health < (GetHeroMaxAvailableHealth() * (trait.ReportedThreshold or 0.1)) then
						table.insert(triggerArgs.AttackerTable.OutgoingCritModifiers, {Name = "Del", Chance = trait.ReportedCritChance or 0.15})
					end
				end
				--Flip the Arcana: The Titaness
				if HeroHasTrait("ReversedStatusCritMetaUpgrade") and victim.VulnerabilityEffects and (TableLength( victim.VulnerabilityEffects ) > 3) then	
					local trait = GetHeroTrait("ReversedStatusCritMetaUpgrade")
					table.insert(triggerArgs.AttackerTable.OutgoingCritModifiers, {Name = "Del", NonPlayerMultiplier = (trait.ReportedChance or 0.1 )})
				end	
			end
		end
		--if WrathOfOlympus then
			-- Wrath of Olympus: Ares - Ferocious Ichor
			if HeroHasTrait("Wistiti-WrathOfOlympus-AresWrathBoon") then
				local trait = GetHeroTrait("Wistiti-WrathOfOlympus-AresWrathBoon")
				print("CurrentRun.CurrentRoom.BloodDropBonus")
				print(CurrentRun.CurrentRoom.BloodDropBonus)
				table.insert( triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers, {Name = "Del", Chance = (0.005 * (CurrentRun.CurrentRoom.BloodDropBonus or 0)) } )
			end
		--end
		if HermesDuos then
			--Hermes Duos: Poseidon - Gilded Hook
			if HeroHasTrait("Wistiti-HermesDuos-MoneyMoreDamageBoon") then
				local trait = GetHeroTrait("Wistiti-HermesDuos-MoneyMoreDamageBoon")
				table.insert(triggerArgs.AttackerTable.OutgoingDamageModifiers, {Name = "Del", NonPlayerMultiplier = (((trait.ReportedMultiplier or 0.05) * ((GameState.Resources["Money"] / 100) or 0)) + 1 )})
			end
		end
	end
	baseFunc(victim, triggerArgs)

	--After the damage remove all the temp additions from the Attacker
	local KeystoRemove = {}
	
	if victim ~= CurrentRun.Hero and HeroHasTrait("ShovelRaiseDeadNecroMel") and triggerArgs.AttackerTable and triggerArgs.AttackerTable.AlwaysTraitor == true and (triggerArgs.AttackerTable.Name == "Zombie" or triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "SentryBot" or triggerArgs.AttackerTable.Name == "AutomatonBeamer") then	
		if ModifiedNow == 1 then
			wait(0.1)
			--After the damage remove all the temp additions from the Attacker
			if triggerArgs.AttackerTable.OutgoingCritModifiers then
				for key,value in pairs(triggerArgs.AttackerTable.OutgoingCritModifiers) do
					if value.Name == "Del" then
						table.insert(KeystoRemove, key)	
					end
				end
				for key,value in pairs(KeystoRemove) do
					if triggerArgs.AttackerTable.OutgoingCritModifiers[value] then
						table.remove(triggerArgs.AttackerTable.OutgoingCritModifiers, value)
					end
				end
			end
			KeystoRemove = {}
			if triggerArgs.AttackerTable.OutgoingDamageModifiers then
				for key,value in pairs(triggerArgs.AttackerTable.OutgoingDamageModifiers) do
					if value.Name == "Del" then
						table.insert(KeystoRemove, key)	
					end
				end
				for key,value in pairs(KeystoRemove) do
					if triggerArgs.AttackerTable.OutgoingDamageModifiers[value] then
						table.remove(triggerArgs.AttackerTable.OutgoingDamageModifiers, value)
					end
				end
			end
			KeystoRemove = {}
			if triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers then
				for key,value in pairs(triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers) do
					if value.Name == "Del" then
						table.insert(KeystoRemove, key)	
					end
				end
				for key,value in pairs(KeystoRemove) do
					if triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers[value] then
						table.remove(triggerArgs.AttackerTable.OutgoingDoubleDamageModifiers, value)
					end
				end
			end
			triggerArgs.AttackerTable.TotTModified = nil
		end
			
		-- Effect of weapon boons
		if HeroHasTrait("PoseidonWeaponBoon") then
			trait = GetHeroTrait("PoseidonWeaponBoon")
			functionArgs = {
				ProjectileName = "PoseidonSplashSplinter",
				CooldownName = "PoseidonSpecial",
				MultihitWeaponWhitelist = {},
				MultihitWeaponConditions = {},
				MultihitProjectileWhitelist ={},
				MultihitProjectileConditions ={},
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
		-- Ares : Grisly Gain
		if HeroHasTrait("AresManaBoon") then
			functionArgs = 
			{
				Chance = 0.2,
				Sound = "/Leftovers/Menu Sounds/CoinFlash",
				Name = "BloodDrop",
				ReportValues = { ReportedDropChance = "Chance" },
			}
			CheckAresManaBloodDrop( victim , functionArgs, triggerArgs )
		elseif HeroHasTrait("HestiaManaBoon") then
			trait = GetHeroTrait("HestiaManaBoon")
			local UsedDelta = (trait.ReportedManaRecovery or 4)
			ManaDelta( UsedDelta )
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
		--Zeus:
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
		--Artemis:
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
		--Apollo:
		if HeroHasTrait("BlindChanceBoon") then
			trait = GetHeroTrait("BlindChanceBoon")
			local dataProperties = EffectData["BlindEffect"].EffectData
			local target = RandomFloat(0,1) 
			if trait.ReportedChance > target then
				ApplyEffect( { DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = "BlindEffect", DataProperties = dataProperties } )
			end
		end
		--Apollo: Extra Dose
		if HeroHasTrait("DoubleStrikeChanceBoon") then
			trait = GetHeroTrait("DoubleStrikeChanceBoon")
			local target = RandomFloat(0,1)
			if (not triggerArgs.AlreadyRepeated) and ((trait.ReportedChance or 0.05) > target) then
				triggerArgs.AlreadyRepeated = 1
				triggerArgs.DamageAmount = DamageAmount
				Damage(victim, triggerArgs)
			end
		end
		--Ares: Blood Spree
		if HeroHasTrait("LowHealthLifestealBoon") then
			if CurrentRun.Hero.Health < 40 then
				trait = GetHeroTrait("LowHealthLifestealBoon")
				if MetaUpgradeData and MetaUpgradeData.HealingReductionShrineUpgrade and MetaUpgradeData.HealingReductionShrineUpgrade.ChangeValue then
					Heal( CurrentRun.Hero, {HealAmount = math.ceil((trait.ReportedLifeStealAmount or 1) * (MetaUpgradeData.HealingReductionShrineUpgrade.ChangeValue)), SourceName = "LowHealthLifestealBoon" })
				else
					Heal( CurrentRun.Hero, {HealAmount = (trait.ReportedLifeStealAmount or 1), SourceName = "LowHealthLifestealBoon" })
				end
			end
		end
		--Circe: Turning to a Simple Form
		if HeroHasTrait("ExPolymorphBoon") and (triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "AutomatonBeamer") then
			trait = GetHeroTrait("ExPolymorphBoon")
			functionArgs = 
			{
				Chance = trait.ReportedChance,
				Cooldown = trait.ReportedCooldown
			}
			mod.CircePolymorph( victim, functionArgs, triggerArgs )
		end
		--Icarus: Explosive Intent
		if HeroHasTrait("OmegaExplodeBoon") and (triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "AutomatonBeamer") then
			trait = GetHeroTrait("OmegaExplodeBoon")
			functionArgs = 
			{
				DamageMultiplier = trait.ReportedMultiplier,
				ProjectileName = "IcarusExplosion",
				ExcludeLinked = true,
				MultihitWeaponWhitelist = {},
				MultihitWeaponConditions = {},
			}
			mod.CheckIcarusExplosion( victim, functionArgs, triggerArgs )
		end
		--Zeus: ArcFlash
		if HeroHasTrait("EchoExpirationBoon") and (triggerArgs.AttackerTable.Name == "Mourner" or triggerArgs.AttackerTable.Name == "AutomatonBeamer") then
			mod.CheckOmegaBlitzTrigger()
		end
	end
end)

-- Changing Aspect text
import "TextEn.lua"

modutil.once_loaded.game(function()
	
	if ZagreusJourney then
		import "hadescast_function.lua"
	end
	import "CopyTraitGodVFX.lua"
	import "CopyProjectiles.lua"
	import "CopyUnits.lua"
	import "CopyTraits.lua"

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
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ShovelIcon",
		RequiredWeapon = "WeaponAxe",
		WeaponKitGrannyModel = "ToolShovel_Mesh",
		ReplacementGrannyModels = 
		{
			Melinoe_Axe_Mesh1 = "ToolShovel_Mesh",
		},
		WeaponDataOverride =
		{
			WeaponAxeSpin =
			{
				ChargeWeaponStages = 
				{
					{ ManaCost = 20, WeaponProperties = { NumProjectiles = 0, FireEndGraphic = "Melinoe_Shovel_End" }, Wait = 0.2, ChannelSlowEventOnEnter = true, HideStageReachedFx = true },
				},
			},
		},
		OnWeaponFiredFunctions = {
			ValidWeapons = { "WeaponAxe", "WeaponCast", "WeaponAxeSpin" },
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
		CurrentlyReserved = 0,
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
					Cooldown = 0.5,
				},
				ExcludeLinked = true,
			},
			{
				WeaponName = "WeaponAxeSpin",
				WeaponProperties = {
					ChargeStartAnimation = "Melinoe_Shovel_FireLoop",
					FireGraphic = "Melinoe_Shovel_End",
					FireFx = "DashDustPuffReverseLarge",
					NumProjectiles = 0,
				},
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



	TabletofPeaceKirbyMel = {
		InheritFrom = { "WeaponEnchantmentTrait" },
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1.5,
			},
			Epic =
			{
				Multiplier = 2,
			},
			Heroic =
			{
				Multiplier = 2.5,
			},
			Legendary =
			{
				Multiplier = 3,
			},
			Perfect =
			{
				Multiplier = 4,
			},
		},
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TabletIcon",
		RequiredWeapon = "WeaponLob",
		WeaponKitGrannyModel = "ToolTablet_Mesh",
		ReplacementGrannyModels = 
		{
			WeaponLob_Mesh = "ToolTablet_Mesh",
		},
		WeaponDataOverride =
		{
			WeaponLob = {
				ShowAmmoUI = false,
				OnProjectileDeathFunction = "nil",
				ChannelSlowIneligible = true,
				MaxAmmo = 10,
				NoAmmoText = "Hint_OutOfCopyLobAmmo",
				NoAmmoFunctionName = _PLUGIN.guid .. "." .. "CopyNoAmmo",
				ChargeWeaponStages = 
				{
					{ 
						ManaCost = 20,
						Wait = 1.0,
						ExChargeAnimationDelay = 0.06,
						ExChargeAnimation = "Melinoe_Lob_AttackEx1_Start",
						EarlyPropertySwaps = 
						{
							Delay = 0.2,
							SwapProperties = 
							{
								WeaponProperties =
								{
									TargetReticleAnimation = "LobEXProjectileReticle",
									AutoLock = false,
									ShowFreeAimLine = false,
									ReticleRadiusOverride = 530,
									WeaponRange = 505,
								},
							},
						},
						WeaponProperties = 
						{ 
							Projectile = "CopyBoltCharged",
							FireGraphic = "Melinoe_Lob_AttackEx1_Fire",
							FireFx = "DashDustPuffReverseLarge",
							SelfVelocity = 0,
							AdditionalProjectileWaveChance = 0,
						},
						CompleteObjective = "WeaponLobCharged",
						ChannelSlowEventOnStart = true
					},
				},
				StartRoomEvents = 
				{
					{
						FunctionName = _PLUGIN.guid .. "." .. "ReloadAmmo",
						Args = {}
					},
				},
			},
		},
		SetupFunction =
		{
			Threaded = true,
			Name = _PLUGIN.guid .. "." .. "SetupCopyAbility",
		},
		Location = "null",
		SecondAmmo = 10,
		SecondCopy = "DummyCopyDisplayBoon",
		SecondLocation = "null",
		CopyArmorLocation = 0,
		OnEnemyDamagedAction = 
		{
			ValidWeapons = {"WeaponLob"},
			FunctionName = _PLUGIN.guid .. "." .. "CopyAbility",
			Args = 
			{
			},
		},
		OnProjectileCreationFunction =
		{
			ValidProjectiles =  { "CopyBoltCharged" },
			Name = _PLUGIN.guid .. "." .. "ReleaseCopyAbility",
			Args = 
			{
				DamageMultiplier = { BaseValue = 1 },
				ReportValues = 
				{ 
					OmegaAttackDamage = "DamageMultiplier",
				}
			}
		},
		OnUnequipFunctionName =  _PLUGIN.guid .. "." .. "UnequipCopyAbility",
		StatLines =
		{
			"TabletofPeaceKirbyMelStat",
		},
		ExtractValues =
		{
			{
				Key = "OmegaAttackDamage",
				ExtractAs = "TooltipDamage",
				Format = "PercentDelta",
			},
		},
		FlavorText = "CopyAbility_FlavorText",
	}

	--OverwriteTableKeys( TraitSetData.Aspects.LobAmmoBoostAspect, TabletofPeaceKirbyMel)
	TraitData.ShovelRaiseDeadNecroMel = ShovelRaiseDeadNecroMel
	TraitData.TabletofPeaceKirbyMel = TabletofPeaceKirbyMel


	--Adds the new traits to the in-game shop
	import "WeaponShop.lua"

	--Adds god specific VFX for Mel
	import "GodEffects.lua"

	import "Hammers.lua"

	--Adds minor propechies
	import "Quests.lua"
	--Add god specific attack animations for summon
	--import "VFXAnimations.lua"
	import "Cosmetics.lua"
	--Add god specific attacks for summon
	--import "WeaponData.lua"

	-- Crucial, leads to crashes if this doesn't run in the end by another mod
	if not rom.mods['NikkelM-Zagreus_Journey'] then
		SetupRunData()
	end

end)