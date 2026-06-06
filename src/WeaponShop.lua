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
})

--Adding Axe aspect to weapon shop
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel2")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel3")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel4")
table.insert( ScreenData.WeaponShop.ItemCategories[5], "ShovelRaiseDeadNecroMel5")

--Adding Axe aspect to weapon selection
table.insert( ScreenData.WeaponUpgradeScreen.DisplayOrder.WeaponAxe, "ShovelRaiseDeadNecroMel" )