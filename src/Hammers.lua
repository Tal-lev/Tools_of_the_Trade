
OverwriteTableKeys( TraitData, {
	    ShovelNecroMelDoubleSummonTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\TwinSummonIcon",
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
		ShovelNecroMelBloodCostTrait = 
		{
			InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodPactIcon",
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
			-- BloodCost effect is in the function in ready.lua
		},

		TabletKirbyInfiniteAmmoTrait = 
		{
			InheritFrom = { "WeaponTrait", "LobHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\InfiniteAmmoIcon",
			GameStateRequirements =
			{
				{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponLob", },
				},
				{
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponLob", },
				IsAny = {"TabletofPeaceKirbyMel", }
				},
				{
				Path = {"CurrentRun", "Hero", "TraitDictionary"},
				HasNone = {"TabletKirbyDoubleAmmoTrait", "TabletKirbyMegaAmmoTrait",},
				},
			},
			-- Infinite Ammo effect is in functions in ready.lua
		},

		TabletKirbyDoubleAmmoTrait = 
		{
			InheritFrom = { "WeaponTrait", "LobHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\DoubleAmmoIcon",
			RarityLevels =
			{
				Common =
				{
					Multiplier = 1,
				},
				Legendary = 
				{
					Multiplier = 1.5
				},
			},
			GameStateRequirements =
			{
				{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponLob", },
				},
				{
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponLob", },
				IsAny = {"TabletofPeaceKirbyMel", }
				},
				{
				Path = {"CurrentRun", "Hero", "TraitDictionary"},
				HasNone = {"TabletKirbyInfiniteAmmoTrait", "TabletKirbyMegaAmmoTrait",},
				},
			},
			WeaponAmmoModification = 
			{
				Name = "WeaponLob",
				AddMaxAmmo = { BaseValue = 20 },
				ReportValues = { ReportedAmmoBonus = "AddMaxAmmo"},
			},
		},

		TabletKirbyMegaAmmoTrait = 
		{
			InheritFrom = { "WeaponTrait", "LobHammerTrait" },
			Icon = "JarlUlsfark-Tools_of_the_Trade\\DoubleAmmoIcon",
			RarityLevels =
			{
				Common =
				{
					Multiplier = 1,
				},
				Legendary = 
				{
					Multiplier = 1.5
				},
			},
			GameStateRequirements =
			{
				{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponLob", },
				},
				{
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponLob", },
				IsAny = {"TabletofPeaceKirbyMel", }
				},
				{
				Path = {"CurrentRun", "Hero", "TraitDictionary"},
				HasNone = {"TabletKirbyInfiniteAmmoTrait", "TabletKirbyDoubleAmmoTrait",},
				},
			},
			AddOutgoingDamageModifiers =
			{
				ValidWeapons = { "WeaponLob" },
				ExcludeLinked = true,
				ValidWeaponMultiplier =
				{
					BaseValue = 2,
					SourceIsMultiplier = true,
				},
				ReportValues = { ReportedWeaponMultiplier = "ValidWeaponMultiplier"},
			},
			WeaponAmmoModification = 
			{
				Name = "WeaponLob",
				ReduceMaxAmmo = { BaseValue = 19 },
				ReportValues = { ReportedAmmoBonus = "ReduceMaxAmmo"},
			},
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

--Kirby Mel
table.insert(TraitData.LobAmmoTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

table.insert(TraitData.LobAmmoMagnetismTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

table.insert(TraitData.LobSpreadShotTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

table.insert(TraitData.LobPulseAmmoCollectTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

table.insert(TraitData.LobGrowthTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

table.insert(TraitData.LobPulseAmmoTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"TabletofPeaceKirbyMel", },
})

--Adding Hammers to pool
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelDoubleSummonTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelDeathminiSummonTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelRobotSummonTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ShovelNecroMelBloodCostTrait")

table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "TabletKirbyInfiniteAmmoTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "TabletKirbyDoubleAmmoTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "TabletKirbyMegaAmmoTrait")


