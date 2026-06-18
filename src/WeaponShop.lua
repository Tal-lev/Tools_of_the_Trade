OverwriteTableKeys(WeaponShopItemData, { 
    ShovelRaiseDeadNecroMel =
	{
		WeaponName = "WeaponAxe",
		HideAfterPurchased = true,
		IconScale = 0.8,
		UnlockTextId = "WeaponShopAspectUnlock",
		Cost =
		{
			OreFSilver = 5,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WorldUpgrades", "WorldUpgradeWeaponUpgradeSystem" },
			},
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{
				BreakIfPlayed = true,
				PreLineWait = 0.65,
				ObjectType = "NPC_Skelly_01",
				PreLineAnim = "Skelly_Babbling",
				TriggerCooldowns = { "SkellyAnyQuipSpeech" },
				{ Cue = "/VO/Skelly_0346", Text = "Wait, {#Emph}who?!" },
			},
		},
	},
    ShovelRaiseDeadNecroMel2 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ShovelRaiseDeadNecroMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ShovelRaiseDeadNecroMel" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ShovelRaiseDeadNecroMel3 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ShovelRaiseDeadNecroMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ShovelRaiseDeadNecroMel2" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ShovelRaiseDeadNecroMel4 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ShovelRaiseDeadNecroMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ShovelRaiseDeadNecroMel3" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ShovelRaiseDeadNecroMel5 =
	{
		WeaponName = "WeaponAxe",
		HideAfterPurchased = false,
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ShovelRaiseDeadNecroMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ShovelRaiseDeadNecroMel4" }
			}
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{ GlobalVoiceLines = "SkellyWeaponMaxUpgradeReactionVoiceLines" },
			{ GlobalVoiceLines = "SkellyWeaponUpgradeReactionVoiceLines" },
		},
	},
	TabletofPeaceKirbyMel =
	{
		WeaponName = "WeaponLob",
		HideAfterPurchased = true,
		IconScale = 0.8,
		UnlockTextId = "WeaponShopAspectUnlock",
		Cost =
		{
			MemPointsCommon = 50,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WorldUpgrades", "WorldUpgradeWeaponUpgradeSystem" },
			},
		},
		PreRevealVoiceLines =
		{
			{
				BreakIfPlayed = true,
				PreLineWait = 0.65,
				ObjectType = "NPC_Skelly_01",
				TriggerCooldowns = { "SkellyAnyQuipSpeech" },

				{ Cue = "/VO/Skelly_0193", Text = "Oh she's a scary one!" },
			},
		},
	},
	TabletofPeaceKirbyMel2 =
	{
		WeaponName = "WeaponLob",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "TabletofPeaceKirbyMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "TabletofPeaceKirbyMel" }
			}
		},
		PreRevealGlobalVoiceLines = "LobAspectUpgradedVoiceLines",
	},
	TabletofPeaceKirbyMel3 =
	{
		WeaponName = "WeaponLob",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "TabletofPeaceKirbyMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "TabletofPeaceKirbyMel2" }
			}
		},
		PreRevealGlobalVoiceLines = "LobAspectUpgradedVoiceLines",
	},
	TabletofPeaceKirbyMel4 =
	{
		WeaponName = "WeaponLob",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "TabletofPeaceKirbyMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "TabletofPeaceKirbyMel3" }
			}
		},
		PreRevealGlobalVoiceLines = "LobAspectUpgradedVoiceLines",
	},
	TabletofPeaceKirbyMel5 =
	{
		WeaponName = "WeaponLob",
		HideAfterPurchased = false,
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "TabletofPeaceKirbyMel",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "TabletofPeaceKirbyMel4" }
			}
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{
				PreLineWait = 0.25,
				UsePlayerSource = true,

				{ Cue = "/VO/Melinoe_3589", Text = "A curse on all who oppose us..." },
			},
			{ GlobalVoiceLines = "SkellyWeaponMaxUpgradeReactionVoiceLines" },
			{ GlobalVoiceLines = "SkellyWeaponUpgradeReactionVoiceLines" },
		},
	},
})

--Adding Axe Necro aspect to weapon shop
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel2")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel3")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel4")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel5")

--Adding Lob Kirby aspect to weapon shop
table.insert( ScreenData.WeaponShop.ItemCategories[6], "TabletofPeaceKirbyMel")
table.insert( ScreenData.WeaponShop.ItemCategories[6], "TabletofPeaceKirbyMel2")
table.insert( ScreenData.WeaponShop.ItemCategories[6], "TabletofPeaceKirbyMel3")
table.insert( ScreenData.WeaponShop.ItemCategories[6], "TabletofPeaceKirbyMel4")
table.insert( ScreenData.WeaponShop.ItemCategories[6], "TabletofPeaceKirbyMel5")

--Adding Axe aspect to weapon selection
table.insert( ScreenData.WeaponUpgradeScreen.DisplayOrder.WeaponAxe, "ShovelRaiseDeadNecroMel" )
table.insert( ScreenData.WeaponUpgradeScreen.DisplayOrder.WeaponLob, "TabletofPeaceKirbyMel" )