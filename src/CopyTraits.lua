OverwriteTableKeys( TraitData, {
    DummyCopyDisplayBoon = 
	{
		Icon = "GUI\\Icons\\ExorcismBook",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Melinoe",
			Text = "Copy_EmptyText"
		},
		PropertyChanges = 
		{
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CopyBolt",
			},
			{
				WeaponName = "WeaponLob",
				WeaponProperties = 
				{
					ClipSize = 1,
					ClipRegenInterval = 0.3,
					ChargeSoundFadeTime = 0.25,
					FullyAutomatic = false,
					Cooldown = 0.4,
				},
				ExcludeLinked = true,
			}
		},
		FlavorText = "CopyAbility_FlavorText",
	},

    MageCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MageIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mage",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "MageRanged",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.1,
                    BarrelLength = 55,
                    ClipSize = 3,
                    ClipRegenInterval = 1.2,
                    ClipReload = 1.2,
		            ChargeSoundFadeTime = 0.25,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MageRanged",
                ProjectileProperty = "Damage",
                ChangeValue = 40,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SiegeVineCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SiegeVineIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SiegeVine",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ChasingVines",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.8,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ChasingVines",
                ProjectileProperty = "Damage",
                ChangeValue = 60,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ScreamerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScreamerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Screamer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ScreamerCone",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.6,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScreamerCone",
                ProjectileProperties = 
				{
					Damage = 30,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	RadiatorCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\RadiatorIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Radiator",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "RadiatorMelee360",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.35,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "RadiatorMelee360",
                ProjectileProperties = 
				{
					Damage = 50,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TurtleCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TurtleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Turtle",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TurtleBounce",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TurtleBounce",
                ProjectileProperties = 
				{
					Damage = 60,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},
	

	
})