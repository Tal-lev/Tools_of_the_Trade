--Adding Weapons the units will use
WeaponSetData = {
	MineBlastPlayer =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MineBlastPlayer",

			FireProjectileAtSelf = true,
			FireFromTarget = true,

			PreAttackDuration = 0.0,
			FireDuration = 0.0,
			PostAttackDuration = 0.0,

			MoveWithinRange = false,
			AttackDistance = 9999999,
		},
	},
	
	LovesickHeartMineBlastPlayer =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "LovesickHeartMineBlastPlayer",

			FireProjectileAtSelf = true,
			FireFromTarget = true,

			PreAttackDuration = 0.0,
			FireDuration = 0.0,
			PostAttackDuration = 0.0,

			MoveWithinRange = false,
			AttackDistance = 9999999,
		},
	},
}
OverwriteTableKeys( WeaponData, WeaponSetData )
OverwriteTableKeys( WeaponDataEnemies, WeaponSetData )
WeaponSetData = nil

--Adding the units
local file = rom.path.combine(rom.paths.Content, 'Game/Units/Enemies.sjson')
	sjson.hook(file, function(data)

	table.insert(data.Units,
	{
		Name = "BloodMinePlayer",
		InheritFrom = "1_BaseTrap",
		AutoLockable = false,
		CollideWithUnits = false,
		DefaultAngle = 0.0,
		DisplayInEditor = true,
		ImmuneToStun = true,
		Life =
		{
			HomingEligible = false,
			JumpTargetEligible = false,
			ProjectilesAlwaysPenetrate = true,
		},
		Thing =
		{
			EditorOutlineDrawBounds = false,
			Graphic = "BloodMineDeployed",
			Grip = 6000.0,
			OnTouchdownFxAnim = "DoorCloseDust",
			StopsProjectiles = false,
			Points =
			{
				{ X = 0, Y = 52, },
				{ X = 100, Y = 0, },
				{ X = 0, Y = -52, },
				{ X = -100, Y = 0, },
			},
		},
	})

	table.insert(data.Units,
	{
		Name = "LovesickHeartPlayer",
		InheritFrom = "1_BaseTrap",
		AutoLockable = false,
		CollideWithUnits = false,
		DefaultAngle = 0.0,
		DisplayInEditor = true,
		ImmuneToStun = true,
		Life =
		{
			HomingEligible = false,
			JumpTargetEligible = false,
			ProjectilesAlwaysPenetrate = true,
		},
		Thing =
		{
			EditorOutlineDrawBounds = false,
			Graphic = "LovesickHeartMine",
			Grip = 6000.0,
			OnTouchdownFxAnim = "BloodSplatGroundRandom",
			StopsProjectiles = false,
			Points =
			{
				{ X = 0, Y = 52, },
				{ X = 100, Y = 0, },
				{ X = 0, Y = -52, },
				{ X = -100, Y = 0, },
			},
		},
	})

return data
end)


OverwriteTableKeys( EnemyData, {

	BloodMinePlayer =
	{
		InheritFrom = { "BaseTrap" },

		ActivateFuseIfNoSpawner = false,
		FuseWarningAnimation = "BlastWarningDecal",

		DefaultAIData =
		{
			DeepInheritance = true,
		},
		TriggerGroups = { "EnemyTeam" },

		OnDamagedFunctionNames = { "ActivateFuse" },
		OnDeathFireWeapons = { "MineBlastPlayer" },

		DissipateAnimation = "BloodMineDeactivated",
		FuseAnimation = "BloodMineActivated",
		FuseWarningProjectileName = "MineBlastPlayer",
		FlashOnFuse = true,
		FuseDuration = 1.0,
		TriggerDistance = 225,
		WakeUpDelay = 1.5,
		ExpirationDuration = 15.0,
		
		DestroyDelay = 0.5,
		AIOptions =
		{
			"MineAI",
		},
		AttackDistance = 150,

		CleanupAnimation = "Blank",
		OutgoingDamageModifiers =
		{
			{
				IsMultiplier = true,
				PlayerMultiplier = 0,
			},
			{
				IsMultiplier = true,
				NonPlayerMultiplier = 1,
			},
		},
	},

	LovesickHeartPlayer =
	{
		InheritFrom = { "BaseTrap" },
		GenusName = "Lovesick",

		ActivateFuseIfNoSpawner = false,
		FuseWarningAnimation = "LovesickHeartMineDecalIn",

		DefaultAIData =
		{
			DeepInheritance = true,
		},

		TriggerGroups = { "EnemyTeam" },

		OnDamagedFunctionNames = { "ActivateFuse" },
		OnDeathFireWeapons = { "LovesickHeartMineBlastPlayer" },

		DissipateAnimation = "LovesickHeartMineDissipate",
		FuseAnimation = "LovesickHeartMineActivated",
		FuseWarningProjectileName = "LovesickHeartMineBlastPlayer",
		FlashOnFuse = true,
		FuseDuration = 0.6,
		TriggerDistance = 310,
		TriggerDistanceScaleY = 0.5,
		WakeUpDelay = 0.15,
		ExpirationDuration = 12.0,

		AIOptions =
		{
			"MineAI",
		},
		AttackDistance = 150,

		OutgoingDamageModifiers =
		{
			{
				IsMultiplier = true,
				PlayerMultiplier = 0,
			},
			{
				IsMultiplier = true,
				NonPlayerMultiplier = 1,
			},
		},
	},
})