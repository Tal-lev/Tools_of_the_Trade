
OverwriteTableKeys( TraitData, {
	    ShovelNecroMelDoubleSummonTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-AspectYoungMel\\TastyVigorIcon",
			GameStateRequirements =
			{
				{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponAxe", },
				},
				{
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
				IsAny = {"ShovelRaiseDeadNecroMel", }
				},
			},
			-- Double summon effect is in the function in ready.lua
		},
		ShovelNecroMelDeathminiSummonTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-AspectYoungMel\\TastyVigorIcon",
			GameStateRequirements =
			{
				{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponAxe", },
				},
				{
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
				IsAny = {"ShovelRaiseDeadNecroMel", }
				},
			},
			-- Death mini summon effect is in the function in ready.lua
		},
})


-- Removing incompatible Hammers
table.insert(TraitData.AxeSpinSpeedTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ShovelRaiseDeadNecroMel", },
})

table.insert(TraitData.AxeMassiveThirdStrikeTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ShovelRaiseDeadNecroMel", },
})

table.insert(TraitData.AxeThirdStrikeTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ShovelRaiseDeadNecroMel", },
})

table.insert(TraitData.AxeFreeSpinTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ShovelRaiseDeadNecroMel", },
})

--Adding Hammers to pool
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelDoubleSummonTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelDeathminiSummonTrait")
