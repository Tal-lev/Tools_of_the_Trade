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

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Zeus",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Zeus",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Hera",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Hera",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Poseidon",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Poseidon",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Demeter",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Demeter",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Apollo",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Apollo",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Aphrodite",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Aphrodite",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Hephaestus",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Hephaestus",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})
	
	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Hestia",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Hestia",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieHRFire_Ares",
		InheritFrom = "ZombieHRFire",
		Thing =
		{
			Graphic = "GreekFireLarge_Ares",
			AmbientSound = "/Leftovers/Object Ambiences/FireAmbientLoop",
			Points =
			{
				{
					X = 4,
					Y = 0,
				},
				{
					X = 0,
					Y = -2,
				},
				{
					X = -4,
					Y = 0,
				},
				{
					X = 0,
					Y = 2,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
		Name = "MudmanEyeThrowplayer",
		InheritFrom = "MudmanEyeThrow",
	})

	table.insert(data.Projectiles,
	{
		Name = "ZombieSpawnerLobplayer",
		InheritFrom = "ZombieSpawnerLob",
		SpawnOnDetonate = "null",
	})

	table.insert(data.Projectiles,
	{
		Name = "LovesickHeartLobplayer",
		InheritFrom = "LovesickHeartLob",
		SpawnOnDeath = "null",
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player",
		InheritFrom = "MatiSlowBolt2",
		Damage = 100,
	})
	
	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Zeus",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Zeus",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Hera",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Hera",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Poseidon",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Poseidon",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Demeter",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Demeter",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Apollo",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Apollo",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Aphrodite",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Aphrodite",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Hephaestus",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Hephaestus",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Hestia",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Hestia",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player_Ares",
		InheritFrom = "MatiSlowBolt2player",
		Thing = 
			{
				Graphic = "MatiProjectileFxIn_Ares",
			},
	})

			
return data
end)

OverwriteTableKeys( ProjectileData, {
	MudmanEyeThrowplayer =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "MudmanEye",
		SpawnBounceOffVictim = true,
		SpawnBounceOffVictimVelocity = 650,
		SpawnBounceOffVictimUpwardVelocity = 2200,
		SpawnsSkipActivatePresentation = true,

		CarriesSpawns = true,

		HitScreenshake = { Distance = 3, Speed = 300, Duration = 0.06, FalloffSpeed = 3000 },
		HitSimSlowParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.25, LerpTime = 0 },
			{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0.1 },
		},
	},

	ZombieSpawnerLobplayer =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "Zombie",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},

	LovesickHeartLobplayer =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "LovesickHeart",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
})