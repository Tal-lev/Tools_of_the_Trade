
OverwriteTableKeys( TraitData, {
	    ShovelNecroMelDoubleSummonTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\DoubleSummonIcon",
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
			Icon = "JarlUlsfark-Tools_of_the_Trade\\AriseAgainIcon",
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
		ShovelNecroMelRobotSummonTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\ScrapMetalIcon",
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
			-- Robot effect is in the function in ready.lua
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
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelRobotSummonTrait")

