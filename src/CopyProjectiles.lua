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

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Zeus",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Zeus",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Zeus",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Hera",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Hera",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Hera",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Poseidon",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Poseidon",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Poseidon",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Demeter",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Demeter",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Demeter",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Apollo",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Apollo",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Apollo",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Aphrodite",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Aphrodite",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Aphrodite",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Hephaestus",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Hephaestus",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Hephaestus",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit1player_Hestia",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 300,
		Speed = 450,
		Damage = 130,
		SpawnCount = 5,
		SpawnOnDissipate = "WaterUnitSpitSplit2player_Hestia",
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit1_Hestia",
			Scale = 1.1,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Zeus",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Zeus",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Hera",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Hera",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Poseidon",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Poseidon",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Demeter",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Demeter",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Apollo",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Apollo",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Aphrodite",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Aphrodite",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Hephaestus",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Hephaestus",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Hestia",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Hestia",
			Scale = 0.7,
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "WaterUnitSpitSplit2player_Ares",
		InheritFrom = "WaterUnitSpitSplit",
		Range = 1000,
		Speed = 700,
		Damage = 90,
		SpawnOnDissipate = null,
		SpawnCount = 0,
		Thing =
		{
			Graphic = "WaterUnitProjectileSpitSplit2_Ares",
			Scale = 0.7,
		},
	})

return data
end)