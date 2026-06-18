local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/PlayerProjectiles.sjson')
	sjson.hook(file, function(data)

	table.insert(data.Projectiles,
	{
		Name = "CopyBolt",
		InheritFrom = "1_BaseDamagingProjectile",
		DetonateFx = "null",
		Type = "STRAIGHT",
		AffectsEnemies = true,
		AffectsFriends = false,
		AffectsSelf = false,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		UnlimitedUnitPenetration = false,
		NumPenetrations = 0,
		AttachToOwner = false,
		StartDelay = 0.04,
		Damage = 1,
		Speed = 6000,
		Range = 350,
		UseRadialImpact = false,
		UseArmor = true,
		UseVulnerability = true,
		DissipateFx = "null",
		GroupName = "Standing",
		ClearOnAttackEffects = true,
		ImpactFx = "null",
		DeathFx = "null",
		ProjectileDefenseRadius = 45,
		Thing =
		{
			Graphic = "MoonLaserLoop",
			OffsetZ = 70,
			RotateGeometry = true,
			Grip = 999999,
			Points =
			{
				{
					X = 35,
					Y = 25,
				},
				{
					X = 35,
					Y = -25,
				},
				{
					X = -5,
					Y = -25,
				},
				{
					X = -5,
					Y = 25,
				},
			},
		},
		Effects =
		{
			 {
				Name = "OnHitStunHeavy",
				Duration = 1.1,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = true,
				Active = true,
				CanAffectInvulnerable = false,
				FrontFx = "null",
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "CopyBoltCharged",
		InheritFrom = "CopyBolt",
		Damage = 0,
		Thing =
		{
			Graphic = "Null",
			OffsetZ = 70,
			RotateGeometry = true,
			Grip = 999999,
			Points =
			{
				{
					X = 35,
					Y = 25,
				},
				{
					X = 35,
					Y = -25,
				},
				{
					X = -5,
					Y = -25,
				},
				{
					X = -5,
					Y = 25,
				},
			},
		},
	})

return data
end)