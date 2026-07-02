local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']
-- Utility functions
local CoreGods = { "Aphrodite", "Apollo", "Ares", "Demeter", "Hephaestus", "Hera", "Hestia", "Poseidon", "Zeus" }

local function AddGodTraitProperty( args )
	if args.PropertyChanges == nil or (args.TraitPrefix == nil and args.TraitSuffix == nil) then
		return
	end
	for _, god in pairs(CoreGods) do
		local traitName = (args.TraitPrefix or "") .. god .. (args.TraitSuffix or "")
		local properties = DeepCopyTable(args.PropertyChanges)
		if TraitData[traitName] ~= nil and TraitData[traitName].PropertyChanges ~= nil then
			for _, property in pairs(properties) do
				if property.Value ~= nil then
					property.ChangeValue = property.Value
					property.Value = nil
				elseif property.ValuePrefix ~= nil or property.ValueSuffix ~= nil then
					property.ChangeValue = (property.ValuePrefix or "") .. god .. (property.ValueSuffix or "")
					property.ValuePrefix = nil
					property.ValueSuffix = nil
				end
				table.insert( TraitData[traitName].PropertyChanges, property )
			end
		end
	end
end

local function RemoveWeaponPropertyFromGodTraits(weaponName, weaponProperty)
    for traitName, trait in pairs(TraitData) do
        
        -- 1. Identify if the trait is a God Boon
        -- Boons typically have a 'LootName' or 'God' key tied to them.
        local isGodBoon = (trait.LootName ~= nil) or (trait.God ~= nil)
        
        -- 2. Explicitly safeguard against modifying Aspects
        -- Aspects usually use this flag, or have "Aspect" in their internal name.
        local isAspect = trait.IsWeaponEnchantment or string.find(traitName, "Aspect") ~= nil
        
        -- 3. Proceed only if it's a boon and definitely not an aspect
        if isGodBoon and not isAspect and trait.PropertyChanges then
            for i = #trait.PropertyChanges, 1, -1 do
                local change = trait.PropertyChanges[i]
                if change.WeaponName == weaponName and change.WeaponProperty == weaponProperty then
                    table.remove(trait.PropertyChanges, i)
                end
            end
        end
    end
end

local function PropertiesMatch(propertyChange, property)
	local ignoredFields = {"Replacements", "Deletions", "Additions"}
	local ignoredFields2 = {}
	for _, field in ipairs(ignoredFields) do
		for _, field2 in ipairs(propertyChange[field] or {}) do
			table.insert(ignoredFields2, field2)
		end
	end
	local merge = true
	for field, value in pairs(propertyChange) do
		if not game.Contains(ignoredFields, field) and not game.Contains(ignoredFields2, field) then
			if type(value) ~= type(property[field]) then
				merge = false
			end
			if type(value) ~= table and property[field] ~= value then
				merge = false
			end
			if type(value) == table and table.concat(property[field] or {}) ~= table.concat(value) then
				merge = false
			end
		end
	end
	if merge then
		for index, value in ipairs(propertyChange.Replacements or {}) do
			property[value] = propertyChange[value]
		end
		for index, value in ipairs(propertyChange.Deletions or {}) do
			property[value] = nil
		end
		for index, value in ipairs(propertyChange.Additions or {}) do
			property[value] = propertyChange[value]
		end
	end
end

local function ModifyGodTraitWeaponProperty(args)
	if args.PropertyChanges == nil then
		return
	end
	local prefix = args.TraitPrefix or ""
	local suffix = args.TraitSuffix or ""
	for _, god in pairs(CoreGods) do
		local traitName = (prefix) .. god .. (suffix)
		local properties = args.PropertyChanges
		local traitData = game.TraitData[traitName]
		if traitData then
			for _, propertyChange in ipairs(properties) do
				for _, traitProperty in ipairs(traitData.PropertyChanges or {}) do
					local processedPropertyChange = game.DeepCopyTable(propertyChange)
					if processedPropertyChange.ValuePrefix ~= nil or processedPropertyChange.ValueSuffix ~= nil then
						processedPropertyChange.ChangeValue = (processedPropertyChange.ValuePrefix or "") .. god .. (processedPropertyChange.ValueSuffix or "")
						processedPropertyChange.ValuePrefix = nil
						processedPropertyChange.ValueSuffix = nil
					end
					PropertiesMatch(processedPropertyChange, traitProperty)
				end
			end
		end
	end
end

ModifyGodTraitWeaponProperty({
	TraitSuffix = "WeaponBoon",
	PropertyChanges = {
		{
			FalseTraitNames = { "AxeBlockEmpowerTrait", "AxeRallyAspect", "AxeAspectofYoungMelinoe", "ShovelRaiseDeadNecroMel"},
			WeaponName = "WeaponAxe",
			WeaponProperty = "FireFx",
			ValuePrefix = "AxeSwipe1_",
			ChangeType = "Absolute",
			ExcludeLinked = true,

			Replacements = {
				"FalseTraitNames"
			},
			Deletions = {

			},
			Additions = {

			}
		},
		{
			TraitName = "AxeBlockEmpowerTrait",
			FalseTraitNames = { "AxeRallyAspect", "AxeAspectofYoungMelinoe" ,"ShovelRaiseDeadNecroMel"},
			WeaponName = "WeaponAxe",
			WeaponProperty = "FireFx",
			ChangeValue = "null",
			ChangeType = "Absolute",
			ExcludeLinked = true,

			Replacements = {

			},
			Deletions = {
				"FalseTraitName"
			},
			Additions = {
				"FalseTraitNames"
			}
		},
	}
})

AddGodTraitProperty({
		TraitSuffix = "WeaponBoon",
		PropertyChanges = {
			-- Torches Aspect of young Mel special 
			{
				TraitName = "ShovelRaiseDeadNecroMel",
				WeaponName = "WeaponAxe",
				WeaponProperty = "FireFX",
				ValuePrefix = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		}
	})

AddGodTraitProperty({
    TraitSuffix = "WeaponBoon",
    PropertyChanges = {
        -- Guard
        {
            WeaponName = "WeaponLob",
            ProjectileName = "GuardMelee",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "GuardMeleeAoE_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		-- Guard2
        {
            WeaponName = "WeaponLob",
            ProjectileName = "GuardMelee2",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "GuardMeleeAoE_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- Brawler
        {
            WeaponName = "WeaponLob",
            ProjectileName = "BrawlerMelee",
            ProjectileProperty = "Graphic",
            ValuePrefix = "BrawlerSwipeBase_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },   
		-- Mage
        {
            WeaponName = "WeaponLob",
            ProjectileName = "MageRanged",
            ProjectileProperty = "Graphic",
            ValuePrefix = "MageProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },   
		-- SiegeVine
        {
            WeaponName = "WeaponLob",
            ProjectileName = "ChasingVines",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SiegeVineAttack_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- Screamer
        {
            WeaponName = "WeaponLob",
            ProjectileName = "ScreamerCone",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ScreamerConeFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },    

		-- Radiator
        {
            WeaponName = "WeaponLob",
            ProjectileName = "RadiatorMelee360",
            ProjectileProperty = "Graphic",
            ValuePrefix = "RadiatorBeam_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		-- Treant Tail
        {
            WeaponName = "WeaponLob",
            ProjectileName = "TreantTailSwipe",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "TreantTailSwipeFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		-- FogEmitter
        {
            WeaponName = "WeaponLob",
            ProjectileName = "FogEmitterSlam",
            ProjectileProperty = "Graphic",
            ValuePrefix = "FogEmitterSlamNova_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		--LightRanged
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LightRangedBolt",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "EnemyProjectileDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LightRangedBolt",
            ProjectileProperty = "DeathFx",
            ValuePrefix = "EnemyProjectileDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LightRangedBolt",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "MageProjectileExplosion_LightRanged_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LightRangedBolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "EnemyProjectileIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		-- Wisp
		{
            WeaponName = "WeaponLob",
            ProjectileName = "WispFuse",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "WispFuseExplosion_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		-- Turtle
        {
            WeaponName = "WeaponLob",
            ProjectileName = "TurtleBounce",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TurtleLobProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
        {
            WeaponName = "WeaponLob",
            ProjectileName = "TurtleBounce",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "TurtleBounceNova_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		--FishmanMelee
		{
            WeaponName = "WeaponLob",
            ProjectileName = "FishmanImpale",
            ProjectileProperty = "Graphic",
            ValuePrefix = "FishmanTridentStrike_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		--FishmanRanged
		{
            WeaponName = "WeaponLob",
            ProjectileName = "FishmanRanged",
            ProjectileProperty = "Graphic",
            ValuePrefix = "FishmanRangedProjectileIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
        {
            WeaponName = "WeaponLob",
            ProjectileName = "FishmanRanged",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "FishmanRangedProjectileDetonate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		-- WaterUnit
        {
            WeaponName = "WeaponLob",
            ProjectileName = "WaterUnitSpit",
            ProjectileProperty = "Graphic",
            ValuePrefix = "WaterUnitProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- Radiator2
        {
            WeaponName = "WeaponLob",
            ProjectileName = "RadiatorMelee360Slow",
            ProjectileProperty = "Graphic",
            ValuePrefix = "RadiatorBeamLongRangeIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "RadiatorMelee360Slow",
            ProjectileProperty = "DeathFx",
            ValuePrefix = "RadiatorBeamLongRangeOut_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Jellyfish
		{
            WeaponName = "WeaponLob",
            ProjectileName = "JellyfishStingRing",
            ProjectileProperty = "Graphic",
            ValuePrefix = "JellyfishStingRingIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Octofish
		{
            WeaponName = "WeaponLob",
            ProjectileName = "OctofishInkProjectile",
            ProjectileProperty = "Graphic",
            ValuePrefix = "OctofishInkProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--CrawlerMiniBoss
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CrawlerMinibossRush",
            ProjectileProperty = "Graphic",
            ValuePrefix = "RatSwipeRush_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--WaterUnitMiniBoss
		{
            WeaponName = "WeaponLob",
            ProjectileName = "WaterUnitSpitSplit",
            ProjectileProperty = "Graphic",
            ValuePrefix = "WaterUnitProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "WaterUnitSpitSplit",
            ProjectileProperty = "SpawnOnDissipate",
            ValuePrefix = "WaterUnitSpitSplit1player_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		-- SirenDrummer
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SirenDrummerCircle",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SirenDrummerCircleNova_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- SirenKeytarist
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SirenKeytaristPowerslideMelee",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SirenKeytaristPowerslideMeleeGlow_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Scylla Notes
		
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ScyllaNotes",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ScyllaNote_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ScyllaNotes",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "ScyllaNoteExplosion_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Corrupted Shade small
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CorruptedShadeSCast",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "CorruptedShadeProjectileDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CorruptedShadeSCast",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "CorruptedShadeProjectileImpact_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CorruptedShadeSCast",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CorruptedShadeProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Corrupted Shade Medium
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CorruptedShadeMRam",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CorruptedShadeRamFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Corrupted Shade Large
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CorruptedShadeLNova",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "CorruptedShadeLNova_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--FogEmitter2
		{
            WeaponName = "WeaponLob",
            ProjectileName = "FogEmitterSweepSmall",
            ProjectileProperty = "Graphic",
            ValuePrefix = "FogEmitterSweepArc_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--BrokenHearted
		{
            WeaponName = "WeaponLob",
            ProjectileName = "BrokenHeartedSlam",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "BrokenHeartedNova_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Lycanthrope
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LycanthropePounce",
            ProjectileProperty = "Graphic",
            ValuePrefix = "LycanSwipeBase_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Screamer2
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ScreamerConeLarge",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ScreamerConeFxLarge_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- Treant Tail2
        {
            WeaponName = "WeaponLob",
            ProjectileName = "TreantTail2Swipe",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "TreantTailSwipeFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  
		--Lamia
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LamiaSkyCast",
            ProjectileProperty = "Graphic",
            ValuePrefix = "LamiaSkyCast_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "LamiaSkyCast",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "LamiaLightning_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Vampire
		{
            WeaponName = "WeaponLob",
            ProjectileName = "VampireSwipe",
            ProjectileProperty = "Graphic",
            ValuePrefix = "VampireSwipe_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--InfestedCerberus
		{
            WeaponName = "WeaponLob",
            ProjectileName = "InfestedCerberusBreath",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CerbFireballBreathIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		-- ClockworkHeavyMelee
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ThugShove",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ThugShoveFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--GoldElemental
		{
            WeaponName = "WeaponLob",
            ProjectileName = "GoldElementalBeam",
            ProjectileProperty = "Graphic",
            ValuePrefix = "GoldElementalBeam_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--GoldElemental_MiniBoss
		{
            WeaponName = "WeaponLob",
            ProjectileName = "GoldElementalGround",
            ProjectileProperty = "Graphic",
            ValuePrefix = "GoldElementalCoinBounce_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "GoldElementalGround",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "GoldElementalCoinBounceOut_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--TimeElemental
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TimeElementalOrbit",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TimeElementalProjectileIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TimeElementalOrbit",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "TimeElementalProjectileDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrLancer
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrLancerThrow",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "SatyrLanceDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrLancerThrow",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "SatyrLanceImpact_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrLancerThrow",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrSpearProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrRatCatcher
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrCast",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "SatyrCastFireballDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrCast",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "SatyrCastFireballDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrCast",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrCastFireballIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrRatCatcher_Miniboss
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrRatCatcherMelee_Miniboss",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrRatCatcherMeleeFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Crawler
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CrawlerRush",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "RatSwipe_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrCultist
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CultistThrow",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CharybdisTentacleSpikeIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--ChronosOne
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ChronosScytheThrow",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "ChronosScytheThrowFade_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ChronosScytheThrow",
            ProjectileProperty = "DeathFx",
            ValuePrefix = "ChronosScytheThrowFade_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ChronosScytheThrow",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ChronosScytheThrowFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--ZagreusOne
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZagreusCast",
            ProjectileProperty = "Graphic",
            ValuePrefix = "BloodstoneProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZagreusCast",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "BloodstoneHitFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZagreusCast",
            ProjectileProperty = "ImpactFx",
            ValuePrefix = "BloodstoneHitFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Carrrion
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CarrionSweep",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CarrionSweepAttackFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Zombie
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZombieMelee",
            ProjectileProperty = "StartFx",
            ValuePrefix = "LycanSwipe_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--ZombieHeavyRanged
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZombieHeavyRangedToss",
            ProjectileProperty = "Graphic",
            ValuePrefix = "FireBarrelZombieProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZombieHeavyRangedToss",
            ProjectileProperty = "SpawnOnDetonate",
            ValuePrefix = "ZombieHRFire_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--ZombieAssassin
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZombieAssassinStab",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ZombieAssassinStabFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Mudman
		{
            WeaponName = "WeaponLob",
            ProjectileName = "MudmanEyeThrowplayer",
            ProjectileProperty = "Graphic",
            ValuePrefix = "MudmanEyeballProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--MudmanEye
		{
            WeaponName = "WeaponLob",
            ProjectileName = "MudmanEyeExplode",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "MudmanEyeballExplosionFlare_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--ZombieSpawner
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ZombieSpawnerLobplayer",
            ProjectileProperty = "Graphic",
            ValuePrefix = "ZombieSpawnerLobProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Boar
		{
            WeaponName = "WeaponLob",
            ProjectileName = "BoarGroundPound",
            ProjectileProperty = "Graphic",
            ValuePrefix = "PolyphemusLeapTouchdownFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--SatyrCrossbow
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrCrossbowHomingBolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrCrossbowBolt_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Sheep_Explosive
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SheepExplode",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "MineExplosionFadeDecal_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--PolyphemusOne
		{
            WeaponName = "WeaponLob",
            ProjectileName = "PolyphemusKick",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CyclopsKickArcIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Scimiterror
		{
            WeaponName = "WeaponLob",
            ProjectileName = "ScimiterrorChop",
            ProjectileProperty = "Graphic",
            ValuePrefix = "EnemyHeavySlashWretchAssassin_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Stickler
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SticklerThrow",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SticklerSpear_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SticklerThrow",
            ProjectileProperty = "DissipateFx",
            ValuePrefix = "SticklerSpearDissipate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Swab
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SwabShockwavePull",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SwabAnchorNovaQuick_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Drunk
		{
            WeaponName = "WeaponLob",
            ProjectileName = "DrunkSwingLeft",
            ProjectileProperty = "StartFx",
            ValuePrefix = "ShipsSwordSwipeRight_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--HarpyCutter
		{
            WeaponName = "WeaponLob",
            ProjectileName = "HarpySlice",
            ProjectileProperty = "StartFx",
            ValuePrefix = "HarpySliceFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Mage2
		{
            WeaponName = "WeaponLob",
            ProjectileName = "Mage2Ranged",
            ProjectileProperty = "Graphic",
            ValuePrefix = "MageProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--Captain
		{
            WeaponName = "WeaponLob",
            ProjectileName = "CaptainPistolShot",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CaptainProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--CharybdisTentacle
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TentacleSpike2",
            ProjectileProperty = "Graphic",
            ValuePrefix = "CharybdisTentacleSpikeIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TentacleSpike2",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "FishmanRangedProjectileDetonate_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },  

		--ErisOne
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SniperGunWeapon",
            ProjectileProperty = "Graphic",
            ValuePrefix = "GunWeaponProjectile_Sniper_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--SentryBot
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SentryBotBolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SentryBotProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--AutomatonBeamer
		{
            WeaponName = "WeaponLob",
            ProjectileName = "AutomatonBeamBolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "EnemyBeamerProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        }, 
		--AutomatonEnforcer
		{
            WeaponName = "WeaponLob",
            ProjectileName = "AutomatonWhirlwind",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "EnforcerWhirlwindFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--HarpyDropper
		{
            WeaponName = "WeaponLob",
            ProjectileName = "HarpyFlapFast",
            ProjectileProperty = "Graphic",
            ValuePrefix = "HarpyTornado_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrCrossbow2
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrCrossbow2Bolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrCrossbowBolt_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrLancer2
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrLancer2Throw",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrSpearProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--SatyrSapper
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrRocket",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SatyrRocketProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SatyrRocket",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "SatyrRocketExplosion_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Talos
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TalosShieldThrowStraight",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TalosShieldVerticalR_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Heracles
		{
            WeaponName = "WeaponLob",
            ProjectileName = "HeraclesEMSpin",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "HeraclesEMSpinFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Prometheus
		{
            WeaponName = "WeaponLob",
            ProjectileName = "PrometheusUppercutWhirlwind",
            ProjectileProperty = "Graphic",
            ValuePrefix = "PrometheusFirePillarFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Simple
		{
            WeaponName = "WeaponLob",
            ProjectileName = "SimpleLocust",
            ProjectileProperty = "Graphic",
            ValuePrefix = "SimpleLocustFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Stalker
		{
            WeaponName = "WeaponLob",
            ProjectileName = "StalkerGroundWave",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TyphonStalkerWaveSpike_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Brute
		{
            WeaponName = "WeaponLob",
            ProjectileName = "BruteChargeHorn",
            ProjectileProperty = "Graphic",
            ValuePrefix = "BruteChargeHornFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Mati
		{
            WeaponName = "WeaponLob",
            ProjectileName = "MatiSlowBolt",
            ProjectileProperty = "Graphic",
            ValuePrefix = "MatiProjectileFxIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "MatiSlowBolt",
            ProjectileProperty = "SpawnOnDissipate",
            ValuePrefix = "MatiSlowBolt2player_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--DragonBurrower
		{
            WeaponName = "WeaponLob",
            ProjectileName = "DragonBurrowerRanged",
            ProjectileProperty = "Graphic",
            ValuePrefix = "DragonBurrowerRangedIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--DragonBurrower
		{
            WeaponName = "WeaponLob",
            ProjectileName = "EarthElementalLaser",
            ProjectileProperty = "Graphic",
            ValuePrefix = "EarthElementalBeam_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--Brute_Miniboss
		{
            WeaponName = "WeaponLob",
            ProjectileName = "BruteMelee1_Miniboss",
            ProjectileProperty = "StartFx",
            ValuePrefix = "BruteMeleeSwipe_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--TyphonTail
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TyphonTailDrill",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TyphonTailDrillFx_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--TyphonEye
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TyphonEyeCannon",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TyphonHeadEyeProjectile_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TyphonEyeCannon",
            ProjectileProperty = "DetonateFx",
            ValuePrefix = "TyphonHeadEyeProjectilePop_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TyphonEyeCannon",
            ProjectileProperty = "SpawnOnDeath",
            ValuePrefix = "TyphonHeadBoltChaoticplayer_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
		--TyphonHead
		{
            WeaponName = "WeaponLob",
            ProjectileName = "TyphonHeadTongueMelee",
            ProjectileProperty = "Graphic",
            ValuePrefix = "TyphonHeadTongueBeamIn_",
            ChangeType = "Absolute",
            ExcludeLinked = true,
        },
	}
})



if ZagreusJourney then 

	AddGodTraitProperty({
		TraitSuffix = "WeaponBoon",
		PropertyChanges = {
			--PunchingBagUnit
			{
				WeaponName = "WeaponLob",
				ProjectileName = "PunchingBagUnitWeapon",
				ProjectileProperty = "DetonateGraphic",
				ValuePrefix = "EnemyConeAttackPunchingBag_",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			--HadesLightRanged
			{
				WeaponName = "WeaponLob",
				ProjectileName = "LightRangedWeapon",
				ProjectileProperty = "Graphic",
				ValuePrefix = "HadesEnemyProjectileIn_",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		}
	})
end