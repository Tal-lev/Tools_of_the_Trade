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

	 DummyCopyTwoDisplayBoon = 
	{
		Icon = "GUI\\Icons\\ExorcismBook",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Melinoe2",
			Text = "Copy_2nd"
		},
	},

	GuardCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GuardIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Guard",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "GuardMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 800,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "GuardMelee",
                ProjectileProperty = "Damage",
                ChangeValue = 30,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	GuardCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GuardIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Guard2",
			Text = "Copy_2nd"
		},
	},

	GuardtwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Guard2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Guard",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "GuardMelee2",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.1,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 800,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "GuardMelee2",
                ProjectileProperty = "Damage",
                ChangeValue = 50,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	GuardtwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Guard2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Guardtwo2",
			Text = "Copy_2nd"
		},
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

	MageCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MageIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mage2",
			Text = "Copy_2nd"
		},
	},

	BrawlerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BrawlerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brawler",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BrawlerMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					ChargeTime = 0.3,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1000,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BrawlerMelee",
                ProjectileProperty = "Damage",
                ChangeValue = 80,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BrawlerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BrawlerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brawler2",
			Text = "Copy_2nd"
		},
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

	SiegeVineCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SiegeVineIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SiegeVine2",
			Text = "Copy_2nd"
		},
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

	ScreamerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScreamerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Screamer2",
			Text = "Copy_2nd"
		},
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

	RadiatorCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\RadiatorIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Radiator2",
			Text = "Copy_2nd"
		},
	},
	--Doesn't Scatter
	TreantCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Treant",
			Text = "Copy_EmptyText"
		},
		--WeaponDataOverride = 
		--{
		--	WeaponLob = 
		--	{
		--		Spread = 15,
		--	},
		--},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TreantRanged",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.35,
					NumProjectiles = 60,
					ProjectileInterval = 0.0485,
					FireRotationDampening = 0.14,
					CancelMovement = true,
					--Spread = 15,
					RootOwnerWhileFiring = true,
					ProjectileAngleOffset = math.rad(0),
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TreantRanged",
                ProjectileProperties = 
				{
					Damage = 10,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TreantCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Treant2",
			Text = "Copy_2nd"
		},
	},

	HecateOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HecateIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Hecate",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HecateTorchCone",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3,
					RootOwnerWhileFiring = true,
					ChareTime = 0.6,
					ProjectileAngleOffset = math.rad(180),
					NumProjectiles = 6,
					ProjectileInterval = 0.11,
					BarrelLength = 0,
					AttachToOwner = true,

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HecateTorchCone",
                ProjectileProperties = 
				{
					Damage = 70,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	HecateOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HecateIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Radiator2",
			Text = "Copy_2nd"
		},
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

	TurtleCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TurtleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Turtle2",
			Text = "Copy_2nd"
		},
	},

	FishmanRangedCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishmanRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishmanRanged",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "FishmanRanged",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "FishmanRanged",
                ProjectileProperties = 
				{
					Damage = 70,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FishmanRangedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TFishmanRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishmanRanged2",
			Text = "Copy_2nd"
		},
	},

	WaterUnitCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterUnitIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterUnit",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "WaterUnitSpit",
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
                ProjectileName = "WaterUnitSpit",
                ProjectileProperties = 
				{
					Damage = 80,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},
	
	WaterUnitCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterUnitIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterUnit2",
			Text = "Copy_2nd"
		},
	},

	RadiatortwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Radiator2Icon",
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
				ChangeValue = "RadiatorMelee360Slow",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 5,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "RadiatorMelee360Slow",
                ProjectileProperties = 
				{
					Damage = 110,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	RadiatortwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Radiator2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Radiator2",
			Text = "Copy_2nd"
		},
	},

	SirenDrummerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SirenDrummerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SirenDrummer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SirenDrummerCircle",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 5,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SirenDrummerCircle",
                ProjectileProperties = 
				{
					Damage = 160,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SirenDrummerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SirenDrummerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SirenDrummer2",
			Text = "Copy_2nd"
		},
	},

	SirenKeytaristCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SirenKeytaristIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SirenKeytarist",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SirenKeytaristPowerslideMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1200,
					AutoLock = true,
					AutoLockRange = 600,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SirenKeytaristPowerslideMelee",
                ProjectileProperties = 
				{
					Damage = 140,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SirenKeytaristCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SirenKeytaristIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SirenKeytarist2",
			Text = "Copy_2nd"
		},
	},

	ScyllaOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScyllaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scylla",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ScyllaNotes",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScyllaNotes",
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

	ScyllaOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScyllaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scylla2",
			Text = "Copy_2nd"
		},
	},

	ScyllaTwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScyllaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scylla",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ScyllaCone",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScyllaCone",
                ProjectileProperties = 
				{
					Damage = 130,
					FizzleOldSpawns = true,

				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ScyllaTwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScyllaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scylla2",
			Text = "Copy_2nd"
		},
	},

	CorruptedShadeSmallCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeSmallIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeSmall",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CorruptedShadeSCast",
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
                ProjectileName = "CorruptedShadeSCast",
                ProjectileProperties = 
				{
					Damage = 70,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CorruptedShadeSmallCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeSmallIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeSmall2",
			Text = "Copy_2nd"
		},
	},

	BrokenHeartedCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BrokenHeartedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BrokenHearted",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BrokenHeartedSlam",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.75,
					BarrelLength = -100,
					WeaponRange = 100,
					AttachToOwner = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BrokenHeartedSlam",
                ProjectileProperties = 
				{
					Damage = 110,
					FizzleOldSpawns = false,
					SpawnAtVictimLocation = false,
					DetonateAtVictimLocation = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BrokenHeartedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BrokenHeartedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BrokenHearted2",
			Text = "Copy_2nd"
		},
	},

	ScreamertwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Screamer2Icon",
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
				ChangeValue = "ScreamerConeLarge",
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
                ProjectileName = "ScreamerConeLarge",
                ProjectileProperties = 
				{
					Damage = 80,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ScreamertwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Screamer2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Screamer2",
			Text = "Copy_2nd"
		},
	},

	--INPROGRESS Has issues with modifying the trap created by the projectile
	LovesickCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LovesickIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lovesick",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "LovesickHeartLob",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LovesickHeartLob",
                ProjectileProperties = 
				{
					Damage = 0,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
			{
                WeaponName = "WeaponLob",
                ProjectileName = "LovesickHeartMineBlast",
                ProjectileProperties = 
				{
					Damage = 120,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	LovesickCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LovesickIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SirenDrummer2",
			Text = "Copy_2nd"
		},
	},
	--Have issues with scatter same as treant and need to implement forward push
	MournerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MournerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mourner",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "MournerRampage",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					AttachToOwner = false,
					Type = "BLINK",
					ChargeSelfVelocity = -2000,
					FireTickSelfVelocity = 750,
					RootOwnerWhileFiring = true,
					SelfVelocity = 500,
					
					BarrelLength = -30,
					NumProjectiles = 20,
					ProjectileInterval = 0.11,
					Spread = 15,
					FireProjectileStartDelay = 0.03,
					ProjectileAngleOffsetMin = math.rad(0),
					
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MournerRampage",
                ProjectileProperties = 
				{
					Damage = 14,
					FizzleOldSpawns = false,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},
	
	MournerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MournerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mourner2",
			Text = "Copy_2nd"
		},
	},

	LamiaCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LamiaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lamia",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "LamiaSkyCast",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.75,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LamiaSkyCast",
                ProjectileProperties = 
				{
					Damage = 90,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	LamiaCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LamiaIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lamia2",
			Text = "Copy_2nd"
		},
	},

	GoldElementalCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GoldElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_GoldElemental",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "GoldElementalBeam",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.8,
					BlockMoveInput = true,
					CancelMovement = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "GoldElementalBeam",
                ProjectileProperties = 
				{
					Damage = 100,
					FizzleOldSpawns = true,
					AutoLock = true,
					AutoLockRange = 600,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	GoldElementalCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GoldElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_GoldElemental2",
			Text = "Copy_2nd"
		},
	},

	ChronosOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ChronosIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Chronos",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ChronosScytheThrow",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3,

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ChronosScytheThrow",
                ProjectileProperties = 
				{
					Damage = 350,
					FizzleOldSpawns = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ChronosOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ChronosIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Chronos2",
			Text = "Copy_2nd"
		},
	},

	
})