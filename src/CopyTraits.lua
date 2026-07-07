local BiomeIScaling = 0.9
local BiomeOScaling = 0.7
local BiomePScaling = 0.6
local BiomeQScaling = 0.6
local BiomeCScaling = 0.7

local BiomeAScaling = 1
local BiomeBScaling = 1
local BiomeDScaling = 1

local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

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
					AttachToOwner =true,
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
                    Cooldown = 1.2,
                    BarrelLength = 55,
                    --ClipSize = 3,
                    --ClipRegenInterval = 1.2,
                    --ClipReload = 1.2,
		            ChargeSoundFadeTime = 0.25,
					NumProjectiles = 3,
					ProjectileInterval = 0.2,
					ProjectileIntervalStart = 0.1,
					ProjectileAngleOffset = math.rad(0),

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

	FogEmitterCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FogEmitterIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FogEmitter",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "FogEmitterSlam",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.2,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "FogEmitterSlam",
                ProjectileProperty = "Damage",
                ChangeValue = 90,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FogEmitterCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FogEmitterIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FogEmitter2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScreamerCone",
                ProjectileProperties = 
				{
					Damage = 30,
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "RadiatorMelee360",
                ProjectileProperties = 
				{
					Damage = 50,
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

	TreantTailCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantTailIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TreantTail",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TreantTailSwipe",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.8,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TreantTailSwipe",
                ProjectileProperties = 
				{
					Damage = 60,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TreantTailCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantTailIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TreantTail2",
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
					NumProjectiles = 10,
					ProjectileInterval = 0.15,
					FireRotationDampening = 0.14,
					CancelMovement = true,
					RootOwnerWhileFiring = true,
					ProjectileAngleOffset = math.rad(1),
					--ProjectileOffsetStart = "LEFT",
					--ProjectileAngleOffsetMin = math.rad(-5),
					--ProjectileAngleOffsetMax = math.rad(5),
					FizzleOldSpawns = false,
					--Scatter = 15,
					--ScatterCap = 30,
					--ScatterSubside = 15,
					--SetCompleteAngleOnFire = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TreantRanged",
                ProjectileProperties = 
				{
					Damage = 10,
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.6,
				ChangeType = "Multiply",
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

	LightRangedCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LightRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_LightRanged",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "LightRangedBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LightRangedBolt",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	LightRangedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LightRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_LightRanged2",
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
					FizzleOldSpawns = false,

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HecateTorchCone",
                ProjectileProperties = 
				{
					Damage = 70,
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TurtleBounce",
                ProjectileProperties = 
				{
					Damage = 60,
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

	FishSwarmerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishSwarmerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishSwarmer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "FishSwarmerBite",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.4,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "FishSwarmerBite",
                ProjectileProperties = 
				{
					Damage = 40,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FishSwarmerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishSwarmerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishSwarmer2",
			Text = "Copy_2nd"
		},
	},

	FishmanMeleeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishmanMeleeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishmanMelee",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "FishmanImpale",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 400,
					BarrelLength = 250,
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
                ProjectileName = "FishmanImpale",
                ProjectileProperty = "Damage",
                ChangeValue = 140,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FishmanMeleeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishmanMeleeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FishmanMelee2",
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "FishmanRanged",
                ProjectileProperties = 
				{
					Damage = 70,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FishmanRangedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FishmanRangedIcon",
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "WaterUnitSpit",
                ProjectileProperties = 
				{
					Damage = 80,
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

	WaterUnitMinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterUnitMinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterUnitMiniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "WaterUnitSpitSplit",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "WaterUnitSpitSplit",
                ProjectileProperties = 
				{
					Damage = 170,
					SpawnOnDissipate = "WaterUnitSpitSplit1player",
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},
	
	WaterUnitMinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterUnitMinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterUnitMiniboss2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "RadiatorMelee360Slow",
                ProjectileProperties = 
				{
					Damage = 110,
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

	ThiefMineLayerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ThiefMineLayerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ThiefMineLayer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodMineTossplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,
					WeaponRange = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodMineTossplayer",
                ProjectileProperties = 
				{
					Damage = 0,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ThiefMineLayerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ThiefMineLayerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ThiefMineLayer2",
			Text = "Copy_2nd"
		},
	},

	JellyfishCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\JellyfishIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Jellyfish",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "JellyfishStingRing",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
					FizzleOldSpawns = true,
					BarrelLength = 0,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "JellyfishStingRing",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	JellyfishCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\JellyfishIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Jellyfish2",
			Text = "Copy_2nd"
		},
	},

	OctofishCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\OctofishIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Octofish",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "OctofishInkRanged",
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
                ProjectileName = "OctofishInkRanged",
                ProjectileProperties = 
				{
					Damage = 70,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	OctofishCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\OctofishIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Octofish2",
			Text = "Copy_2nd"
		},
	},

	CrawlerMinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CrawlerMinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CrawlerMiniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CrawlerMinibossRush",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 1400,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CrawlerMinibossRush",
                ProjectileProperties = 
				{
					Damage = 110,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CrawlerMinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CrawlerMinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CrawlerMiniboss2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SirenDrummerCircle",
                ProjectileProperties = 
				{
					Damage = 160,
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SirenKeytaristPowerslideMelee",
                ProjectileProperties = 
				{
					Damage = 140,
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScyllaNotes",
                ProjectileProperties = 
				{
					Damage = 60,
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
					FizzleOldSpawns = true,
					
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScyllaCone",
                ProjectileProperties = 
				{
					Damage = 130,
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

	BloodlessNakedCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessNakedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessNaked",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodlessMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.4,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 1200,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodlessMelee",
                ProjectileProperties = 
				{
					Damage = 90,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BloodlessNakedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessNakedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessNaked2",
			Text = "Copy_2nd"
		},
	},

	BloodlessGrenadierCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessGrenadierIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessGrenadier",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodlessGrenadierRanged",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.5,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					AutoLockArcDistance = 40,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodlessGrenadierRanged",
                ProjectileProperties = 
				{
					Damage = 120,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BloodlessGrenadierCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessGrenadierIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessGrenadier2",
			Text = "Copy_2nd"
		},
	},

	BloodlessSelfDestructCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessSelfDestructIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessSelfDestruct",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodlessGrenadierDive",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.35,
					AutoLock = false,
					BarrelLength = 0,
					WeaponRange = 0,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodlessGrenadierDive",
                ProjectileProperties = 
				{
					Damage = 140,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BloodlessSelfDestructCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessSelfDestructIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessSelfDestruct2",
			Text = "Copy_2nd"
		},
	},

	BloodlessPitcherCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessPitcherIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessPitcher",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodlessPitch",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.5,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					AutoLockArcDistance = 40,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodlessPitch",
                ProjectileProperties = 
				{
					Damage = 100,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BloodlessPitcherCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessPitcherIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessPitcher2",
			Text = "Copy_2nd"
		},
	},

	BloodlessWaveFistCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessWaveFistIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessWaveFist",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BloodlessWaveFistWeapon",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 1.5,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					AutoLockArcDistance = 40,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BloodlessWaveFistWeapon",
                ProjectileProperties = 
				{
					Damage = 70,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BloodlessWaveFistCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BloodlessWaveFistIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_BloodlessWaveFist2",
			Text = "Copy_2nd"
		},
	},

	SpreadShotUnitCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SpreadShotUnitIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SpreadShotUnit",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SpreadShotBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 1.5,
					AutoLock = false,
					BarrelLength = 0,
					NumProjectiles = 5,
					ProjectileAngleInterval = 30,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SpreadShotBolt",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SpreadShotUnitCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SpreadShotUnitIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SpreadShotUnit2",
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CorruptedShadeSCast",
                ProjectileProperties = 
				{
					Damage = 70,
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

	CorruptedShadeMediumCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeMediumIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeMedium",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CorruptedShadeMRam",
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
					SelfVelocity = 1200,
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
                ProjectileName = "CorruptedShadeMRam",
                ProjectileProperty = "Damage",
                ChangeValue = 90,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CorruptedShadeMediumCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeMediumIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeMedium2",
			Text = "Copy_2nd"
		},
	},

	CorruptedShadeLargeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeLargeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeLarge",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CorruptedShadeLNova",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.1,
					FizzleOldSpawns = false,
					BarrelLength = 0,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CorruptedShadeLNova",
                ProjectileProperties = 
				{
					Damage = 130,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CorruptedShadeLargeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CorruptedShadeLargeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CorruptedShadeLarge2",
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
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BrokenHeartedSlam",
                ProjectileProperties = 
				{
					Damage = 110,
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

	FogEmittertwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FogEmitter2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FogEmittertwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "FogEmitterSweepSmall",
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
                ProjectileName = "FogEmitterSweepSmall",
                ProjectileProperty = "Damage",
                ChangeValue = 80,
                ChangeType = "Absolute",
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.6,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	FogEmittertwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\FogEmitter2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_FogEmittertwo2",
			Text = "Copy_2nd"
		},
	},

	LycanSwarmerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LycanSwarmerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_LycanSwarmer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "LycanSwarmerChomp",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.5,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LycanSwarmerChomp",
                ProjectileProperties = 
				{
					Damage = 80,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	LycanSwarmerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LycanSwarmerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_LycanSwarmer2",
			Text = "Copy_2nd"
		},
	},

	LycanthropeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LycanthropeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lycanthrope",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "LycanthropePounce",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 1.1,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 100,
					AutoLockRange = 300,
					SelfVelocity = 1100,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LycanthropePounce",
                ProjectileProperties = 
				{
					Damage = 160,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	LycanthropeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\LycanthropeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lycanthrope2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScreamerConeLarge",
                ProjectileProperties = 
				{
					Damage = 80,
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

	VampireCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\VampireIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Vampire",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "VampireSwipe",
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
                ProjectileName = "VampireSwipe",
                ProjectileProperties = 
				{
					Damage = 160,
				},
				ExcludeLinked = true,
            },
        },
		AddOutgoingLifestealModifiers =
		{
			ValidWeapons = { "WeaponLob" },
			ValidMultiplier = 0.01,
			MaxLifesteal = 1,
			MinLifesteal = 1,
			ReportValues = 
			{ 
				ReportedLifeStealAmount = "MaxLifesteal",
				ReportedRequirement = "RequiredMaxHealth",
			},
		},
		FlavorText = "CopyAbility_FlavorText",
	},

	VampireCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\VampireIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Vampire2",
			Text = "Copy_2nd"
		},
	},

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
				ChangeValue = "LovesickHeartLobplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,
					WeaponRange = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LovesickHeartLobplayer",
                ProjectileProperties = 
				{
					Damage = 0,
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
			Key = "Copy_Lovesick2",
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
					AttachToOwner = true,
					Type = "GUN",
					ChargeSelfVelocity = -2000,
					RootOwnerWhileFiring = false,
					SelfVelocity = 1200,
					BarrelLength = -30,
					NumProjectiles = 20,
					ProjectileInterval = 0.11,
					Spread = 0,
					FireProjectileStartDelay = 0.03,
					ProjectileAngleOffset = math.rad(1),
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					AutoLock = true,
					AutoLockRange = 600,
					AutoLockArcDistance = 90,
					CancelChargeOnRelease = true,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MournerRampage",
                ProjectileProperties = 
				{
					Damage = 14,
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

	TreantTailtwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantTail2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TreantTailtwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TreantTail2Swipe",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.8,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TreantTail2Swipe",
                ProjectileProperties = 
				{
					Damage = 120,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TreantTailtwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TreantTail2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TreantTailtwo2",
			Text = "Copy_2nd"
		},
	},

	--Doesn't Scatter
	TreanttwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Treant2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Treant",
			Text = "Copy_EmptyText"
		},
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
					NumProjectiles = 10,
					ProjectileInterval = 0.15,
					FireRotationDampening = 0.14,
					CancelMovement = true,
					RootOwnerWhileFiring = true,
					ProjectileAngleOffset = math.rad(1),
					--ProjectileOffsetStart = "LEFT",
					--ProjectileAngleOffsetMin = math.rad(-5),
					--ProjectileAngleOffsetMax = math.rad(5),
					FizzleOldSpawns = false,
					--Scatter = 15,
					--ScatterCap = 30,
					--ScatterSubside = 15,
					--SetCompleteAngleOnFire = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TreantRanged",
                ProjectileProperties = 
				{
					Damage = 12,
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.6,
				ChangeType = "Multiply",
			},
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TreantCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Treant2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Treant2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LamiaSkyCast",
                ProjectileProperties = 
				{
					Damage = 90,
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

	Lamia_MinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Lamia_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lamia_Miniboss",
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
					NumProjectiles = 3,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "LamiaSkyCast",
                ProjectileProperties = 
				{
					Damage = 90,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	Lamia_MinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Lamia_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Lamia_Miniboss2",
			Text = "Copy_2nd"
		},
	},

	InfestedCerberusOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\InfestedCerberusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_InfestedCerberus",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "InfestedCerberusBreath",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					RootOwnerWhileFiring = true,
					ChargeTime = 1,
					ProjectileAngleOffset = math.rad(0),
					NumProjectiles = 12,
					ProjectileAngleOffset = math.rad(5),
					ProjectileOffsetStart = "LEFT",
					ProjectileInterval = 0.2,
					FireOnRelease = true,
					AttachToOwner = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "InfestedCerberusBreath",
                ProjectileProperties = 
				{
					Damage = 160,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	InfestedCerberusOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\InfestedCerberusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_InfestedCerberus2",
			Text = "Copy_2nd"
		},
	},

	SwarmerClockworkCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SwarmerClockworkIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SwarmerClockwork",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SwarmerClockworkMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.35,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SwarmerClockworkMelee",
                ProjectileProperties = 
				{
					Damage = (80 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SwarmerClockworkCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SwarmerClockworkIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SwarmerClockwork2",
			Text = "Copy_2nd"
		},
	},
	
	ClockworkHeavyMeleeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ClockworkHeavyMeleeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ClockworkHeavyMelee",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ThugShove",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.75,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1000,
					AutoLock = true,
					BarrelLength = -100,
					AutoLockRange = 300,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ThugShove",
                ProjectileProperties = 
				{
					Damage = (180 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ClockworkHeavyMeleeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ClockworkHeavyMeleeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ClockworkHeavyMelee2",
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
					FizzleOldSpawns = true,
					AutoLock = true,
					AutoLockRange = 600,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "GoldElementalBeam",
                ProjectileProperties = 
				{
					Damage = (100 * BiomeIScaling),
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

	GoldElemental_MiniBossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GoldElemental_MiniBossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_GoldElemental_MiniBoss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "GoldElementalGround",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = false,
					AutoLock = false,
					NumProjectiles = 17,
					ProjectileAngleOffset = math.rad(50),
					ProjectileInterval = 0.1,
					
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "GoldElementalGround",
                ProjectileProperties = 
				{
					Damage = (200 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	GoldElemental_MiniBossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\GoldElemental_MiniBossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_GoldElemental_MiniBoss2",
			Text = "Copy_2nd"
		},
	},

	TimeElementalCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TimeElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TimeElemental",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TimeElementalOrbit",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.8,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TimeElementalOrbit",
                ProjectileProperties = 
				{
					Damage = (90 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TimeElementalCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TimeElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TimeElemental2",
			Text = "Copy_2nd"
		},
	},

	SatyrLancerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrLancerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrLancer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrLancerThrow",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.85,
					FizzleOldSpawns = false,
					BarrelLength = 200,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrLancerThrow",
                ProjectileProperties = 
				{
					Damage = (170 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.4,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrLancerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrLancerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrLancer2",
			Text = "Copy_2nd"
		},
	},

	SatyrRatCatcherCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrRatCatcherIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrRatCatcher",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrCast",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
					FizzleOldSpawns = false,
					BarrelLength = 200,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrCast",
                ProjectileProperties = 
				{
					Damage = (160 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrRatCatcherCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrRatCatcherIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrRatCatcher2",
			Text = "Copy_2nd"
		},
	},

	SatyrRatCatcher_MinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrRatCatcher_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrRatCatcher_Miniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrRatCatcherMelee_Miniboss",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.1,
					FizzleOldSpawns = false,
					BarrelLength = 0,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 700,
					AutoLock = true,
					AutoLockRange = 200,
					AutoLockArcDistance = 30,
					RootOwnerWhileFiring = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrRatCatcherMelee_Miniboss",
                ProjectileProperties = 
				{
					Damage = (180 * BiomeIScaling),
					AttachToOwner = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrRatCatcher_MinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrRatCatcher_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrRatCatcher_Miniboss2",
			Text = "Copy_2nd"
		},
	},

	CrawlerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CrawlerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Crawler",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CrawlerRush",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.2,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CrawlerRush",
                ProjectileProperties = 
				{
					Damage = (10 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CrawlerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CrawlerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Crawler2",
			Text = "Copy_2nd"
		},
	},

	SatyrCultistCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCultistIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCultist",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CultistThrow",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CultistThrow",
                ProjectileProperties = 
				{
					Damage = (110 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrCultistCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCultistIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCultist2",
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
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ChronosScytheThrow",
                ProjectileProperties = 
				{
					Damage = (350 * BiomeIScaling),
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

	ChronosTwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Chronos2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Chronostwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ChronosDashStasis",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ChronosDashStasis",
                ProjectileProperties = 
				{
					Damage = (0 * BiomeIScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ChronosTwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Chronos2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Chronostwo2",
			Text = "Copy_2nd"
		},
	},

	ZagreusOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZagreusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zagreus",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZagreusCast",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.9,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZagreusCast",
                ProjectileProperties = 
				{
					Damage = (300 * BiomeCScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZagreusOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZagreusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zagreus2",
			Text = "Copy_2nd"
		},
	},

	ZagreusTwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Zagreus2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zagreus",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZagreusSpearSpin",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.2,
					FizzleOldSpawns = true,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					BarrelLength = 0,
					AttachToOwner = true,
					SelfVelocity = 1100,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZagreusSpearSpin",
                ProjectileProperties = 
				{
					Damage = (500 * BiomeCScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZagreusTwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Zagreus2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zagreus2",
			Text = "Copy_2nd"
		},
	},

	CarrionCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CarrionIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Carrion",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CarrionSweep",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.2,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1200,
					AutoLock = true,
					AutoLockRange = 200,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CarrionSweep",
                ProjectileProperty = "Damage",
                ChangeValue = 60,
                ChangeType = "Absolute",
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CarrionCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CarrionIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Carrion2",
			Text = "Copy_2nd"
		},
	},

	ZombieCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zombie",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 400,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					BarrelLength = -200,
                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieMelee",
                ProjectileProperties = 
				{
					Damage = 60,
					StartFx = "LycanSwipe",
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Zombie2",
			Text = "Copy_2nd"
		},
	},

	ZombieCrewmanCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieCrewmanIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieCrewman",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 400,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					BarrelLength = -200,
                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieMelee",
                ProjectileProperties = 
				{
					Damage = 60,
					StartFx = "LycanSwipe",
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieCrewmanCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieCrewmanIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieCrewman2",
			Text = "Copy_2nd"
		},
	},

	ZombieOlympusCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieOlympusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieCrewman",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 400,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					BarrelLength = -200,
                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieMelee",
                ProjectileProperties = 
				{
					Damage = (120 * BiomePScaling),
					StartFx = "LycanSwipe",
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieOlympusCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieOlympusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieOlympus2",
			Text = "Copy_2nd"
		},
	},


	ZombieHeavyRangedCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieHeavyRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieHeavyRanged",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieHeavyRangedToss",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.75,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieHeavyRangedToss",
                ProjectileProperties = 
				{
					Damage = 150,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieHeavyRangedCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieHeavyRangedIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieHeavyRanged2",
			Text = "Copy_2nd"
		},
	},

	ZombieAssassinCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieAssassinIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieAssassin",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieAssassinStab",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FizzleOldSpawns = false,
					Cooldown = 0.2,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 600,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					NumProjectiles = 6,
					ProjectileInterval = 0.1,
					ProjectileAngleOffset = math.rad(3),

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieAssassinStab",
                ProjectileProperties = 
				{
					Damage = 40,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieAssassinCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieAssassinIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieAssassin2",
			Text = "Copy_2nd"
		},
	},

	WispCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WispIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Wisp",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "WispFuse",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "WispFuse",
                ProjectileProperties = 
				{
					Damage = 80,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	WispCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WispIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Wisp2",
			Text = "Copy_2nd"
		},
	},

	ZombieAssassin_MinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieAssassin_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieAssassin_Miniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieAssassinStab",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.4,
					FizzleOldSpawns = false,
					Cooldown = 0.2,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 600,
					AutoLock = true,
					AutoLockRange = 100,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
					NumProjectiles = 6,
					ProjectileInterval = 0.1,
					ProjectileAngleOffset = math.rad(3),

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieAssassinStab",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieAssassin_MinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieAssassin_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieAssassin_Miniboss2",
			Text = "Copy_2nd"
		},
	},
	
	MudmanEyeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MudmanEyeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_MudmanEye",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "MudmanEyeExplode",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MudmanEyeExplode",
                ProjectileProperties = 
				{
					Damage = 100,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	MudmanEyeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MudmanEyeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_MudmanEye2",
			Text = "Copy_2nd"
		},
	},

	MudmanCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MudmanIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mudman",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "MudmanEyeThrowplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MudmanEyeThrowplayer",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	MudmanCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MudmanIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mudman2",
			Text = "Copy_2nd"
		},
	},

	ZombieSpawnerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieSpawnerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieSpawner",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ZombieSpawnerLobplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ZombieSpawnerLobplayer",
                ProjectileProperties = 
				{
					Damage = 0,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ZombieSpawnerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ZombieSpawnerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_ZombieSpawner2",
			Text = "Copy_2nd"
		},
	},

	BoarCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BoarIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Boar",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BoarGroundPound",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BoarGroundPound",
                ProjectileProperties = 
				{
					Damage = 120,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BoarCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BoarIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Boar2",
			Text = "Copy_2nd"
		},
	},

	SatyrCrossbowCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCrossbowIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCrossbow",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrCrossbowHomingBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
					NumProjectiles = 3,
					ProjectileAngleOffset = math.rad(27.5),

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrCrossbowHomingBolt",
                ProjectileProperties = 
				{
					Damage = 80,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrCrossbowCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCrossbowIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCrossbow2",
			Text = "Copy_2nd"
		},
	},

	PolyphemusOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\PolyphemusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Polyphemus",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "PolyphemusKick",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "PolyphemusKick",
                ProjectileProperties = 
				{
					Damage = 200,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	PolyphemusOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\PolyphemusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Polyphemus2",
			Text = "Copy_2nd"
		},
	},

	Sheep_ExplosiveCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Sheep_ExplosiveIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Sheep_Explosive",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SheepExplode",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SheepExplode",
                ProjectileProperties = 
				{
					Damage = 100,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	Sheep_ExplosiveCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Sheep_ExplosiveIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Sheep_Explosive2",
			Text = "Copy_2nd"
		},
	},

	Sheep_ZombieCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Sheep_ZombieIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Sheep_Zombie",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SheepRam",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.6,
					FizzleOldSpawns = false,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 900,
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
                ProjectileName = "SheepRam",
                ProjectileProperties = 
				{
					Damage = 60,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	Sheep_ZombieCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Sheep_ZombieIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Sheep_Zombie2",
			Text = "Copy_2nd"
		},
	},

	ScimiterrorCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScimiterrorIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scimiterror",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ScimiterrorChop",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 800,
					AutoLock = true,
					AutoLockRange = 150,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ScimiterrorChop",
                ProjectileProperties = 
				{
					Damage = (110 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ScimiterrorCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ScimiterrorIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Scimiterror2",
			Text = "Copy_2nd"
		},
	},

	SticklerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SticklerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stickler",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SticklerThrow",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.5,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SticklerThrow",
                ProjectileProperties = 
				{
					Damage = (150 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SticklerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SticklerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stickler2",
			Text = "Copy_2nd"
		},
	},

	SwabCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SwabIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Swab",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SwabShockwavePull",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3,
					FizzleOldSpawns = false,
					ChargeTime = 1,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SwabShockwavePull",
                ProjectileProperties = 
				{
					Damage = (220 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SwabCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SwabIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Swab2",
			Text = "Copy_2nd"
		},
	},

	DrunkCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\DrunkIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Drunk",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "DrunkSwingLeft",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.3,
					FizzleOldSpawns = false,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 800,
					AutoLock = true,
					AutoLockRange = 150,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "DrunkSwingLeft",
                ProjectileProperties = 
				{
					Damage = (160 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	DrunkCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\DrunkIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Drunk2",
			Text = "Copy_2nd"
		},
	},

	HarpyCutterCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HarpyCutterIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HarpyCutter",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HarpySlice",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.85,
					FizzleOldSpawns = false,
					FireOnRelease = true,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1000,
					AutoLock = true,
					AutoLockRange = 150,
					AutoLockArcDistance = 90,
					RootOwnerWhileFiring = true,
					CancelChargeOnRelease = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HarpySlice",
                ProjectileProperties = 
				{
					Damage = (140 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	HarpyCutterCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HarpyCutterIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HarpyCutter2",
			Text = "Copy_2nd"
		},
	},

	WaterElementalCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterElemental",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "WaterElementalBite",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 0.8,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "WaterElementalBite",
                ProjectileProperties = 
				{
					Damage = (90 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	WaterElementalCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\WaterElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_WaterElemental2",
			Text = "Copy_2nd"
		},
	},

	MagetwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Mage2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Magetwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "Mage2Ranged",
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
					NumProjectiles = 3,
					ProjectileAngleOffset = math.rad(35),

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "Mage2Ranged",
                ProjectileProperty = "Damage",
                ChangeValue = (80 * BiomeOScaling),
                ChangeType = "Absolute",
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	MagetwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Mage2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Magetwo2",
			Text = "Copy_2nd"
		},
	},

	CaptainCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CaptainIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Captain",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "CaptainPistolShot",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.6,
					FizzleOldSpawns = false,
					NumProjectiles = 3,
					ProjectileInterval = 0.05,
					ProjectileAngleOffset = math.rad(5),
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "CaptainPistolShot",
                ProjectileProperties = 
				{
					Damage = (150 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CaptainCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CaptainIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Captain2",
			Text = "Copy_2nd"
		},
	},

	CharybdisTentacleCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CharybdisTentacleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CharybdisTentacle",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TentacleSpike2",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3.1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TentacleSpike2",
                ProjectileProperties = 
				{
					Damage = (160 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	CharybdisTentacleCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\CharybdisTentacleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_CharybdisTentacle2",
			Text = "Copy_2nd"
		},
	},

	ErisOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ErisIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Eris",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SniperGunWeapon",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2.5,
					FizzleOldSpawns = false,
					AutoLock = true,
					AutoLockRange = 2000,
					AutoLockArcDistance = 20,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SniperGunWeapon",
                ProjectileProperties = 
				{
					Damage = (300 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ErisOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\ErisIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Eris2",
			Text = "Copy_2nd"
		},
	},

	ErisTwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Eris2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Eris2",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "ErisLaser",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.92,
					FizzleOldSpawns = false,
					AutoLock = true,
					AutoLockRange = 400,
					AutoLockArcDistance = 60,
					FireRotationDampening = 0.1,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "ErisLaser",
                ProjectileProperties = 
				{
					Damage = (300 * BiomeOScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	ErisTwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Eris2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Eristwo2",
			Text = "Copy_2nd"
		},
	},

	SentryBotCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SentryBotIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SentryBot",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SentryBotBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SentryBotBolt",
                ProjectileProperties = 
				{
					Damage = (150 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SentryBotCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SentryBotIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SentryBot2",
			Text = "Copy_2nd"
		},
	},

	AutomatonBeamerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\AutomatonBeamerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_AutomatonBeamer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "AutomatonBeamBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2.25,
					FizzleOldSpawns = true,
					NumProjectiles = 10,
					ProjectileInterval = 0.3,
					ProjectileAngleOffset = math.rad(0),
					RootOwnerWhileFiring = true,

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "AutomatonBeamBolt",
                ProjectileProperties = 
				{
					Damage = (140 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	AutomatonBeamerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\AutomatonBeamerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_AutomatonBeamer2",
			Text = "Copy_2nd"
		},
	},

	AutomatonEnforcerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\AutomatonEnforcerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_AutomatonEnforcer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "AutomatonWhirlwind",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2.15,
					FizzleOldSpawns = true,
					NumProjectiles = 10,
					ProjectileInterval = 0.16,
					ChargeTime = 1.6,
					ProjectileAngleOffset = math.rad(0),
					RootOwnerWhileFiring = true,

                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "AutomatonWhirlwind",
                ProjectileProperties = 
				{
					Damage = (130 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	AutomatonEnforcerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\AutomatonEnforcerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_AutomatonEnforcer2",
			Text = "Copy_2nd"
		},
	},

	HarpyDropperCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HarpyDropperIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HarpyDropper",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HarpyFlapFast",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.2,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HarpyFlapFast",
                ProjectileProperties = 
				{
					Damage = (110 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	HarpyDropperCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HarpyDropperIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HarpyDropper2",
			Text = "Copy_2nd"
		},
	},

	SatyrCrossbowtwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCrossbow2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCrossbowtwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrCrossbow2Bolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.675,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrCrossbow2Bolt",
                ProjectileProperties = 
				{
					Damage = (170 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrCrossbowtwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrCrossbow2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrCrossbowtwo2",
			Text = "Copy_2nd"
		},
	},

	SatyrLancertwoCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrLancer2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrLancertwo",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrLancer2Throw",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 0.85,
					FizzleOldSpawns = false,
					BarrelLength = 200,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrLancer2Throw",
                ProjectileProperties = 
				{
					Damage = (200 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.4,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrLancertwoCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrLancer2Icon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrLancertwo2",
			Text = "Copy_2nd"
		},
	},

	SatyrSapperCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrSapperIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrSapper",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SatyrRocket",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.485,
					FizzleOldSpawns = false,
					BarrelLength = 150,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SatyrRocket",
                ProjectileProperties = 
				{
					Damage = (220 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SatyrSapperCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SatyrSapperIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_SatyrSapper2",
			Text = "Copy_2nd"
		},
	},

	TalosCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TalosIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Talos",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TalosShieldThrowStraight",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.7,
					FizzleOldSpawns = false,
					BarrelLength = 150,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "TalosShieldThrowStraight",
                ProjectileProperties = 
				{
					Damage = (250 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.4,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TalosCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TalosIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Talos2",
			Text = "Copy_2nd"
		},
	},

	HeraclesOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HeraclesIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Heracles",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HeraclesEMSpin",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 3.5,
					FizzleOldSpawns = true,
					NumProjectiles = 12,
					ProjectileAngleOffset = math.rad(0),
					ProjectileInterval = 0.4,
					BlockMoveInput = true,
					CancelMovement = true,
					SelfVelocity = 1300,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HeraclesEMSpin",
                ProjectileProperties = 
				{
					Damage = (250 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	HeraclesOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\HeraclesIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Heracles2",
			Text = "Copy_2nd"
		},
	},

	PrometheusOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\PrometheusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Prometheus",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "PrometheusUppercutWhirlwind",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 4,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "PrometheusUppercutWhirlwind",
                ProjectileProperties = 
				{
					Damage = (350 * BiomePScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	PrometheusOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\PrometheusIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Prometheus2",
			Text = "Copy_2nd"
		},
	},

	SimpleCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SimpleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Simple",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "SimpleLocust",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = true,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "SimpleLocust",
                ProjectileProperties = 
				{
					Damage = (90 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	SimpleCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\SimpleIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Simple2",
			Text = "Copy_2nd"
		},
	},

	StalkerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\StalkerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stalker",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "StalkerGroundWave",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
					NumProjectiles = 2,
					ProjectileAngleOffset = math.rad(20),
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "StalkerGroundWave",
                ProjectileProperties = 
				{
					Damage = (180 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	StalkerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\StalkerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stalker2",
			Text = "Copy_2nd"
		},
	},

	Stalker_MinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Stalker_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stalker_Miniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "StalkerGroundWave",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
					NumProjectiles = 2,
					ProjectileAngleOffset = math.rad(20),
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "StalkerGroundWave",
                ProjectileProperties = 
				{
					Damage = (240 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	Stalker_MinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Stalker_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Stalker_Miniboss2",
			Text = "Copy_2nd"
		},
	},

	BruteCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BruteIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brute",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BruteChargeHorn",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
					Cooldown = 1,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					BarrelLength = 150,
					AutoLockRange = 300,
					SelfVelocity = 1000,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "BruteChargeHorn",
                ProjectileProperties = 
				{
					Damage = (250 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	BruteCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\BruteIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brute2",
			Text = "Copy_2nd"
		},
	},

	MatiCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MatiIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mati",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "MatiSlowBolt",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "MatiSlowBolt",
                ProjectileProperties = 
				{
					Damage = (170 * BiomeQScaling),
					SpawnOnDissipate = "MatiSlowBolt2player"
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	MatiCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\MatiIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Mati2",
			Text = "Copy_2nd"
		},
	},

	DragonBurrowerCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\DragonBurrowerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_DragonBurrower",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "DragonBurrowerRanged",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.25,
					FizzleOldSpawns = false,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "DragonBurrowerRanged",
                ProjectileProperties = 
				{
					Damage = (110 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	DragonBurrowerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\DragonBurrowerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_DragonBurrower2",
			Text = "Copy_2nd"
		},
	},

	EarthElementalCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\EarthElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_EarthElemental",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "EarthElementalLaserplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.55,
					BlockMoveInput = true,
					CancelMovement = true,
					FizzleOldSpawns = true,
					AutoLock = true,
					AutoLockRange = 600,
					BarrelLength = 0,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "EarthElementalLaserplayer",
                ProjectileProperties = 
				{
					Damage = (90 * BiomeQScaling),
					BeamDieOnTargetLost = false,
					AffectsEnemies = true,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	EarthElementalCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\EarthElementalIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_EarthElemental2",
			Text = "Copy_2nd"
		},
	},

	Brute_MinibossCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Brute_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brute_Miniboss",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "BruteMelee1_Miniboss",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1,
					FizzleOldSpawns = false,
					BlockMoveInput = true,
					CancelMovement = true,
					AutoLock = true,
					AutoLockRange = 100,
					SelfVelocity = 400,
                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "BruteMelee1_Miniboss",
                ProjectileProperties = 
				{
					Damage = (300 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 2.6,
				ChangeType = "Multiply",
			},	
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	Brute_MinibossCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\Brute_MinibossIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_Brute_Miniboss2",
			Text = "Copy_2nd"
		},
	},

	TyphonTailCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonTailIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonTail",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TyphonTailDrill",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.6,
					FizzleOldSpawns = true,
					BarrelLength = 0,
					NumProjectiles = 10,
					ProjectileInterval = 0.3,

                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "TyphonTailDrill",
                ProjectileProperties = 
				{
					Damage = (290 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TyphonTailCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonTailIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonTail2",
			Text = "Copy_2nd"
		},
	},

	TyphonEyeCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonEyeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonEye",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TyphonEyeCannon",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,

                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "TyphonEyeCannon",
                ProjectileProperties = 
				{
					Damage = (350 * BiomeQScaling),
					SpawnOnDeath = "TyphonHeadBoltChaoticplayer",
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TyphonEyeCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonEyeIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonEye2",
			Text = "Copy_2nd"
		},
	},

	TyphonHeadOneCopyDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonHeadIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonHead",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "TyphonHeadTongueMelee",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 1.1,
					FizzleOldSpawns = true,
					BarrelLength = 0,

                },
                ExcludeLinked = true,
			},
			{
                WeaponName = "WeaponLob",
                ProjectileName = "TyphonHeadTongueMelee",
                ProjectileProperties = 
				{
					Damage = (700 * BiomeQScaling),
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	TyphonHeadOneCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade\\TyphonHeadIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_TyphonHead2",
			Text = "Copy_2nd"
		},
	},

})

if ZagreusJourney then
	OverwriteTableKeys( TraitData, {
	HadesSwarmerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesSwarmerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HadesSwarmer",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "SwarmerMelee",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.4,
						BlockMoveInput = true,
						CancelMovement = true,
						FizzleOldSpawns = true,
						AutoLock = true,
						BarrelLength = 150,
						AutoLockRange = 300,
						SelfVelocity = 900,

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "SwarmerMelee",
					ProjectileProperties = 
					{
						Damage = (30 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},
		
		HadesSwarmerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesSwarmerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HadesSwarmer2",
				Text = "Copy_2nd"
			},
		},

		LightSpawnerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\LightSpawnerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_LightSpawner",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "SwarmerSpawnerplayer",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1,
						FizzleOldSpawns = false,
						BarrelLength = 150,

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "SwarmerSpawnerplayer",
					ProjectileProperties = 
					{
						Damage = (0 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		LightSpawnerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\LightSpawnerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_LightSpawner2",
				Text = "Copy_2nd"
			},
		},

		PunchingBagUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\PunchingBagUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_PunchingBagUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "PunchingBagUnitWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.4,
						BlockMoveInput = true,
						CancelMovement = true,
						FizzleOldSpawns = true,
						AutoLock = true,
						BarrelLength = 50,
						AutoLockRange = 300,
						SelfVelocity = 1200,

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "PunchingBagUnitWeapon",
					ProjectileProperties = 
					{
						Damage = (80 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},
		
		PunchingBagUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\PunchingBagUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_PunchingBagUnit2",
				Text = "Copy_2nd"
			},
		},

		HadesLightRangedCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesLightRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HadesLightRanged",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "LightRangedWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.5,
						FizzleOldSpawns = false,
						BarrelLength = 150,

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "LightRangedWeapon",
					ProjectileProperties = 
					{
						Damage = (50 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HadesLightRangedCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesLightRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HadesLightRanged2",
				Text = "Copy_2nd"
			},
		},

		HeavyRangedCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HeavyRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyRanged",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HeavyRangedWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 3,
						FizzleOldSpawns = false,
						BarrelLength = 0,
						AutoLock = true,
						AutoLockRange = 400,
						AutoLockArcDistance = 90,

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HeavyRangedWeapon",
					ProjectileProperties = 
					{
						Damage = (10 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HeavyRangedCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HeavyRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyRanged2",
				Text = "Copy_2nd"
			},
		},

		HeavyMeleeCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade\\ClockworkHeavyMeleeIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyMelee",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ThugSwipe",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.5,
						FireOnRelease = true,
						BlockMoveInput = true,
						CancelMovement = true,
						SelfVelocity = 400,
						AutoLock = true,
						AutoLockRange = 100,
						AutoLockArcDistance = 90,
						RootOwnerWhileFiring = true,
						CancelChargeOnRelease = true,
						BarrelLength = -100,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ThugSwipe",
					ProjectileProperties = 
					{
						Damage = (100 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
				{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.8,
				ChangeType = "Multiply",
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HeavyMeleeCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade\\ClockworkHeavyMeleeIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyMelee2",
				Text = "Copy_2nd"
			},
		},

		HadesThiefMineLayerCopyDisplayBoon = 
		{
		Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesThiefMineLayerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HadesThiefMineLayer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HadesBloodMineTossplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,
					WeaponRange = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HadesBloodMineTossplayer",
                ProjectileProperties = 
				{
					Damage = 0,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
	},

	HadesThiefMineLayerCopyTwoDisplayBoon = 
	{
		Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesThiefMineLayerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HadesThiefMineLayer2",
			Text = "Copy_2nd"
		},
	},

		DisembodiedHandCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\DisembodiedHandIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_DisembodiedHand",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "DisembodiedHandGrab",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1,
						FireOnRelease = true,
						BlockMoveInput = true,
						CancelMovement = true,
						SelfVelocity = 400,
						AutoLock = true,
						AutoLockRange = 100,
						AutoLockArcDistance = 90,
						RootOwnerWhileFiring = true,
						CancelChargeOnRelease = true,
						BarrelLength = 0,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "DisembodiedHandGrab",
					ProjectileProperties = 
					{
						Damage = (50 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
				{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.8,
				ChangeType = "Multiply",
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		DisembodiedHandCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\DisembodiedHandIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_DisembodiedHand2",
				Text = "Copy_2nd"
			},
		},

		HeavyRangedSplitterMinibossCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HeavyRangedSplitterMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyRangedSplitterMiniboss",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HeavyRangedWeaponSplitter",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 3,
						FizzleOldSpawns = false,
						BarrelLength = 0,
						AutoLock = true,
						AutoLockRange = 400,
						AutoLockArcDistance = 90,
						NumProjectiles = 8,
						ProjectileAngleOffset = math.rad(45),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HeavyRangedWeaponSplitter",
					ProjectileProperties = 
					{
						Damage = (15 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HeavyRangedSplitterMinibossCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HeavyRangedSplitterMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HeavyRangedSplitterMiniboss2",
				Text = "Copy_2nd"
			},
		},

		WretchAssassinMinibossCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\WretchAssassinMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_WretchAssassinMiniboss",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "WretchAssassinRanged",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.4,
						FizzleOldSpawns = false,
						NumProjectiles = 3,
						AutoLock = true,
						AutoLockRange = 300,
						AutoLockArcDistance = 40,
						ProjectileInterval = 0.2,
						ProjectileIntervalStart = 0.1,
						ProjectileAngleOffset = math.rad(0),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "WretchAssassinRanged",
					ProjectileProperties = 
					{
						Damage = (40 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		WretchAssassinMinibossCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\WretchAssassinMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_WretchAssassinMiniboss2",
				Text = "Copy_2nd"
			},
		},

		HarpyOneCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HarpyIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpy",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HarpyWhipWhirl",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.6,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HarpyWhipWhirl",
					ProjectileProperties = 
					{
						Damage = (150 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HarpyOneCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HarpyIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpy2",
				Text = "Copy_2nd"
			},
		},

		HarpytwoOneCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\Harpy2Icon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpytwo",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HarpyWhipShot",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.6,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HarpyWhipShot",
					ProjectileProperties = 
					{
						Damage = (70 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HarpytwoOneCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\Harpy2Icon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpytwo2",
				Text = "Copy_2nd"
			},
		},

		HarpythreeOneCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\Harpy3Icon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpythree",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HarpyLightningTisiphone",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.8,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HarpyLightningTisiphone",
					ProjectileProperties = 
					{
						Damage = (90 * BiomeAScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HarpythreeOneCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\Harpy3Icon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Harpythree2",
				Text = "Copy_2nd"
			},
		},
		
		RangedBurrowerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\RangedBurrowerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_RangedBurrower",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HydraDart",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.75,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HydraDart",
					ProjectileProperties = 
					{
						Damage = (70 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
				{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.7,
				ChangeType = "Multiply",
			},	
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		RangedBurrowerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\RangedBurrowerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_RangedBurrower2",
				Text = "Copy_2nd"
			},
		},
		
		CrusherUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\CrusherUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_CrusherUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "CrusherUnitTouchdown",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1,
						FizzleOldSpawns = true,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "CrusherUnitTouchdown",
					ProjectileProperties = 
					{
						Damage = (120 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		CrusherUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\CrusherUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_CrusherUnit2",
				Text = "Copy_2nd"
			},
		},

		FreezeShotUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\FreezeShotUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_FreezeShotUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "FreezeShotWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.5,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "FreezeShotWeapon",
					ProjectileProperties = 
					{
						Damage = (10 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		FreezeShotUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\FreezeShotUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_FreezeShotUnit2",
				Text = "Copy_2nd"
			},
		},

		HitAndRunUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HitAndRunUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HitAndRunUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "FreezeShotWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.5,
						FizzleOldSpawns = false,
						NumProjectiles = 6,
						ProjectileAngleOffset = math.rad(20),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "FreezeShotWeapon",
					ProjectileProperties = 
					{
						Damage = (10 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HitAndRunUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HitAndRunUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HitAndRunUnit2",
				Text = "Copy_2nd"
			},
		},

		SpreadShotUnitMinibossCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SpreadShotUnitMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SpreadShotUnitMiniboss",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "LightRangedWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2,
						AutoLock = false,
						BarrelLength = 0,
						NumProjectiles = 30,
						ProjectileInterval = 0.1,
						ProjectileIntervalStart = 0.1,
						ProjectileAngleOffset = math.rad(70),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "LightRangedWeapon",
					ProjectileProperties = 
					{
						Damage = 50,
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		SpreadShotUnitMinibossTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SpreadShotUnitMinibossIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SpreadShotUnitMiniboss2",
				Text = "Copy_2nd"
			},
		},

		HydraHeadDartmakerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadDartmakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadDartmaker",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HydraDart",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2,
						FizzleOldSpawns = false,
						NumProjectiles = 5,
						ProjectileInterval = 0.6,
						ProjectileIntervalStart = 0.6,
						ProjectileAngleOffset = math.rad(0),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HydraDart",
					ProjectileProperties = 
					{
						Damage = (70 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HydraHeadDartmakerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadDartmakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadDartmaker2",
				Text = "Copy_2nd"
			},
		},

		HydraHeadLavamakerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadLavamakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadLavamaker",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HydraLavaSpit",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2.5,
						FizzleOldSpawns = false,
						NumProjectiles = 4,
						ProjectileInterval = 0.2,
						ProjectileIntervalStart = 0.1,
						ProjectileAngleOffset = math.rad(0),
						WeaponRange = 1000,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HydraLavaSpit",
					ProjectileProperties = 
					{
						Damage = (50 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HydraHeadLavamakerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadLavamakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadLavamaker2",
				Text = "Copy_2nd"
			},
		},

		HydraHeadSummonerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadSummonerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadSummoner",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HydraSummonplayer",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2.5,
						FizzleOldSpawns = false,
						NumProjectiles = 2,
						ProjectileIntervalStart = 0.3,
						ProjectileInterval = 0.3,
						ProjectileAngleOffset = math.rad(30),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HydraSummonplayer",
					ProjectileProperties = 
					{
						Damage = (0 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HydraHeadSummonerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadSummonerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadSummoner2",
				Text = "Copy_2nd"
			},
		},

		HydraHeadWavemakerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadWavemakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadWavemaker",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "BloodlessWaveFistWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2,
						FizzleOldSpawns = false,
						NumProjectiles = 3,
						ProjectileInterval = 0,
						ProjectileIntervalStart = 0,
						ProjectileAngleOffset = math.rad(15),
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "BloodlessWaveFistWeapon",
					ProjectileProperties = 
					{
						Damage = (110 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HydraHeadWavemakerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadWavemakerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadWavemaker2",
				Text = "Copy_2nd"
			},
		},

		HydraHeadSlammerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadSlammerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadSlammer",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "HydraTouchdown",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1,
						FizzleOldSpawns = true,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "HydraTouchdown",
					ProjectileProperties = 
					{
						Damage = (160 * BiomeBScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		HydraHeadSlammerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HydraHeadSlammerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_HydraHeadSlammer2",
				Text = "Copy_2nd"
			},
		},

		ShadeNakedCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeNakedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeNaked",
				Text = "Copy_EmptyText"
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ShadeNakedCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeNakedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeNaked2",
				Text = "Copy_2nd"
			},
		},

		ShadeSpearUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeSpearUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeSpearUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ShadeSpearThrust",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.5,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ShadeSpearThrust",
					ProjectileProperties = 
					{
						Damage = (150 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ShadeSpearUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeSpearUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeSpearUnit2",
				Text = "Copy_2nd"
			},
		},

		ShadeSwordUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeSwordUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeSwordUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ShadeSwordOverhead",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.5,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ShadeSwordOverhead",
					ProjectileProperties = 
					{
						Damage = (130 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ShadeSwordUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeSwordUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeSwordUnit2",
				Text = "Copy_2nd"
			},
		},
		
		ShadeShieldUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeShieldUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeShieldUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ShadeHunkerDown",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.5,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ShadeHunkerDown",
					ProjectileProperties = 
					{
						Damage = (130 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ShadeShieldUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeShieldUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeShieldUnit2",
				Text = "Copy_2nd"
			},
		},

		ShadeBowUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeBowUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeBowUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ShadeBowRanged",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.0,
						FizzleOldSpawns = false,
						AutoLock = true,
						AutoLockRange = 700,
						AutoLockArcDistance = 30,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ShadeBowRanged",
					ProjectileProperties = 
					{
						Damage = (100 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ShadeBowUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ShadeBowUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ShadeBowUnit2",
				Text = "Copy_2nd"
			},
		},

		FlurrySpawnerCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\FlurrySpawnerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_FlurrySpawner",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "FlurrySpawnerWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 5.0,
						FizzleOldSpawns = false,
						NumProjectiles = 20,
						ProjectileInterval = 0.2,
						ProjectileAngleOffset = math.rad(5),
						ProjectileOffsetStart = "LEFT",
						
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "FlurrySpawnerWeapon",
					ProjectileProperties = 
					{
						Damage = (30 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		FlurrySpawnerCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\FlurrySpawnerIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_FlurrySpawner2",
				Text = "Copy_2nd"
			},
		},

		ChariotSuicideCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ChariotSuicideIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ChariotSuicide",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ChariotRamDeathWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2.0,
						FizzleOldSpawns = false,
						BlockMoveInput = true,
						CancelMovement = true,
						SelfVelocity = 1200,
						AttachToOwner =true,
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
					ProjectileName = "ChariotRamDeathWeapon",
					ProjectileProperties = 
					{
						Damage = (100 * BiomeCScaling),
						StartDelay = 0.45,
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ChariotSuicideCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ChariotSuicideIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ChariotSuicide2",
				Text = "Copy_2nd"
			},
		},

		ChariotCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ChariotIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_Chariot",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "ChariotRam",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 2.0,
						FizzleOldSpawns = false,
						BlockMoveInput = true,
						CancelMovement = true,
						SelfVelocity = 1200,
						AttachToOwner =true,
						AutoLock = true,
						AutoLockRange = 100,
						AutoLockArcDistance = 90,
						RootOwnerWhileFiring = true,
						CancelChargeOnRelease = true,
						AttachToOwner = true,
						
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "ChariotRam",
					ProjectileProperties = 
					{
						Damage = (190 * BiomeCScaling),
						StartDelay = 0.45,
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		ChariotCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\ChariotIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_ChariotSuicide2",
				Text = "Copy_2nd"
			},
		},

		SplitShotUnitCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SplitShotUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SplitShotUnit",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
			{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "SplitShotWeapon",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.0,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "SplitShotWeapon",
					ProjectileProperties = 
					{
						Damage = (100 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		SplitShotUnitCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SplitShotUnitIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SplitShotUnit2",
				Text = "Copy_2nd"
			},
		},

		MinotaurOneCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\MinotaurIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_MinotaurOne",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
				{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "MinotaurAxeCrescentStrike",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.0,
						FizzleOldSpawns = false,
						NumProjectiles = 3,
						BarrelLength = 200,
						ProjectileAngleOffset = math.rad(20),
						SelfVelocity = 400,
						BlockMoveInput = true,
						CancelMovement = true,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "MinotaurAxeCrescentStrike",
					ProjectileProperties = 
					{
						Damage = (60 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		MinotaurOneCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\MinotaurIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_MinotaurOne2",
				Text = "Copy_2nd"
			},
		},

		TheseusOneCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\TheseusIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_MinotaurOne",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
				{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "TheseusSpearThrowReturn",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 1.0,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "TheseusSpearThrowReturn",
					ProjectileProperties = 
					{
						Damage = (200 * BiomeCScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		TheseusOneCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\TheseusIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_MinotaurOne2",
				Text = "Copy_2nd"
			},
		},

		SatyrRangedCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SatyrRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SatyrRanged",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
				{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "SatyrRangedWeaponplayer",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.4,
						FizzleOldSpawns = false,
					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "SatyrRangedWeaponplayer",
					ProjectileProperties = 
					{
						Damage = (10 * BiomeDScaling),
					},
					ExcludeLinked = true,
				},
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		SatyrRangedCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\SatyrRangedIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_SatyrRanged2",
				Text = "Copy_2nd"
			},
		},

		RatThugCopyDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\RatThugIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_RatThug",
				Text = "Copy_EmptyText"
			},
			PropertyChanges = 
			{
				{
					WeaponName = "WeaponLob",
					WeaponProperty = "Projectile",
					ChangeValue = "RatPoisonShake",
				},
				{
					WeaponName = "WeaponLob",
					WeaponProperties = 
					{
						Cooldown = 0.4,
						FizzleOldSpawns = false,
						WeaponRange = 200,
						NumProjectiles = 4,
						ProjectileAngleOffset = math.rad(90),

					},
					ExcludeLinked = true,
				},
				{
					WeaponName = "WeaponLob",
					ProjectileName = "RatPoisonShake",
					ProjectileProperties = 
					{
						Damage = (10 * BiomeDScaling),
						SpawnOnDetonate = "HadesPoisonPuddleSmallplayer"
					},
					ExcludeLinked = true,
				},
				{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.1,
				ChangeType = "Multiply",
				},	
			},
			FlavorText = "CopyAbility_FlavorText",
		},

		RatThugCopyTwoDisplayBoon = 
		{
			Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\RatThugIcon",
			ShowInHUD = true,
			CustomLabel = 
			{
				DisplayType = "RoomValue",
				Key = "Copy_RatThug2",
				Text = "Copy_2nd"
			},
		},

		HadesThiefImpulseMineLayerCopyDisplayBoon = 
		{
		Icon = "JarlUlsfark-Tools_of_the_Trade_ZJcompat\\HadesThiefImpulseMineLayerIcon",
		ShowInHUD = true,
		CustomLabel = 
		{
			DisplayType = "RoomValue",
			Key = "Copy_HadesThiefImpulseMineLayer",
			Text = "Copy_EmptyText"
		},
        PropertyChanges = 
        {
           {
				WeaponName = "WeaponLob",
				WeaponProperty = "Projectile",
				ChangeValue = "HadesImpulseMineTossplayer",
			},
            {
				WeaponName = "WeaponLob",
				WeaponProperties = 
                {
                    Cooldown = 2,
					FizzleOldSpawns = false,
					WeaponRange = 900,
                },
                ExcludeLinked = true,
			},
            {
                WeaponName = "WeaponLob",
                ProjectileName = "HadesImpulseMineTossplayer",
                ProjectileProperties = 
				{
					Damage = 50,
				},
				ExcludeLinked = true,
            },
        },
		FlavorText = "CopyAbility_FlavorText",
		},
	})
end