local BiomeIScaling = 0.9
local BiomeOScaling = 0.7
local BiomePScaling = 0.6
local BiomeQScaling = 0.6
local BiomeCScaling = 0.7

local BiomeAScaling = 1

local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

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
		Name = "KirbyHammerAxeNova",
		InheritFrom = "1_BaseProjectile",
		DetonateFx = "AxeNova_Simple",
		Type = "INSTANT",
		Fuse = 0.0,
		Range = 0,
		Damage = 60,
		DamageRadius = 300.0,
		BlastSpeed = 3000,
		DamageRadiusScaleY = 0.6,
		DamageRadiusScaleX = 1.1,
		AutoAdjustForTarget = false,
		UseVulnerability = false,
		NumPenetrations = 999,
		IgnoreDodge = true,
		SpawnRadius = 0,
		Speed = -100,
		UseStartLocation = true,
		DetonateLineOfSight = true,
		CanHitWithoutDamage = true,
		SilentImpactOnInvulnerable = true,
		Thing =
		{
		},
		Effects =
		{
			{
				Name = "OnHitStun",
				Duration = 0.5,
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
		Name = "DespairElementalRamPlayer",
		InheritFrom = "1_BaseEnemyProjectile",
		Type = "STRAIGHT",
		DetonateSound = "/Leftovers/SFX/BeaconTeleportSFX",
		AttachToOwner = true,
		RotateWithOwner = true,
		ImpactVelocity = 2100,
		NumPenetrations = 9999,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		UnlimitedUnitPenetration = true,
		MultipleUnitCollisions = true,
		MultipleObstacleCollisions = true,
		Damage = 200,
		ImpactLineOfSight = true,
		TotalFuse = 10.0,
		ImmunityDuration = 1.0,
		DieWithOwner = true,
		Thing =
		{
			Graphic = "AxeNova_Simple",
			OffsetZ = 58,
			Grip = 999999,
			ExtentScale = 1.1,
			Points =
			{
				{ X = 32, Y = 44, },
				{ X = 96, Y = 12, },
				{ X = 96, Y = -20, },
				{ X = 32, Y = -52, },
				{ X = -32, Y = -52, },
				{ X = -96, Y = -20, },
				{ X = -96, Y = 12, },
				{ X = -32, Y = 44, },
			},
		},
		Effects =
		{
			{
				Name = "OnHitStun",
				Duration = 0.2,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = true,
				Active = true,
				CanAffectInvulnerable = false,
				Cancelable = true,
			},
			{
				Name = "KnockbackGrip",
				Type = "GRIP",
				Duration = 0.1,
				Modifier = 0.01,
				HaltOnEnd = true,
				Active = true,
				CanAffectInvulnerable = true,
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
		SpawnOnDeath = "LovesickHeartPlayer",
	})

	table.insert(data.Projectiles,
	{
		Name = "LovesickHeartMineBlastPlayer",
		InheritFrom = "LovesickHeartMineBlast",
		Damage = 120,
	})

	table.insert(data.Projectiles,
	{
		Name = "BloodMineTossplayer",
		InheritFrom = "BloodMineToss",
		SpawnOnDetonate = "BloodMinePlayer",
	})

	table.insert(data.Projectiles,
	{
		Name = "MineBlastPlayer",
		InheritFrom = "MineBlast",
		Damage = 100,
	})

	table.insert(data.Projectiles,
	{
		Name = "HadesBloodMineTossplayer",
		InheritFrom = "BloodMineTossplayer",
		SpawnOnDetonate = "HadesBloodMinePlayer",
	})

	table.insert(data.Projectiles,
	{
		Name = "HadesMineBlastPlayer",
		InheritFrom = "MineBlast",
		Damage = 50,
	})

	table.insert(data.Projectiles,
	{
		Name = "HadesImpulseMineTossplayer",
		InheritFrom = "MineToss",
	    SpawnCap = 1,
	    FizzleOldSpawnsOnDetonate = true,
      	Speed = 1000,
      	SpeedVariance = 30,
      	LaunchAngle = 50,
		SpawnOnDetonate = "HadesImpulseMineBlastPlayer",
	})

	table.insert(data.Projectiles,
	{
		Name = "HadesImpulseMineBlastPlayer",
		InheritFrom = "MineBlast",
		Damage = 150,
	})

	table.insert(data.Projectiles,
	{
		Name = "MatiSlowBolt2player",
		InheritFrom = "MatiSlowBolt2",
		Damage = (100 * BiomeQScaling),
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

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer",
		InheritFrom = "TyphonHeadBoltChaotic",
		Damage = (300 * BiomeQScaling),
	})
	
	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Zeus",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Zeus",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Hera",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Hera",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Poseidon",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Poseidon",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Demeter",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Demeter",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Apollo",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Apollo",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Aphrodite",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Aphrodite",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Hephaestus",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Hephaestus",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Hestia",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Hestia",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "TyphonHeadBoltChaoticplayer_Ares",
		InheritFrom = "TyphonHeadBoltChaoticplayer",
		Thing = 
			{
				Graphic = "TyphonHeadEyeProjectileSecondary_Ares",
			},
	})

	table.insert(data.Projectiles,
	{
		Name = "EarthElementalLaserplayer",
		InheritFrom = "EarthElementalLaser",
	})

	if ZagreusJourney then
	
		table.insert(data.Projectiles,
		{
			Name = "SwarmerSpawnerplayer",
			InheritFrom = "SwarmerMelee",
			Damage = 0,
			DamageLow = 0,
     		DamageHigh = 0,
		})

		table.insert(data.Projectiles,
		{
			Name = "HydraSummonplayer",
			InheritFrom = "1_BaseEnemyProjectileUndestroyable",
			CheckObstacleImpact = true,
			DetonateOnTouchdown = true,
			DetonateFx = "null",
			DetonateSound = "null",
			Type = "LOB",
			Damage = 0,
			DamageRadiusScaleY = 0.55,
			AutoAdjustForTarget = false,
			Speed = 1250,
			SpeedVariance = 150,
			MaxSpeed = 1575.0,
			LaunchAngle = 75,
			SpinRate = 0,
			MinRange = 0.0,
			Gravity = 2400,
			AffectsFriends = false,
			AffectsSelf = false,
			CheckUnitImpact = false,
			CheckObstacleImpact = false,
			--SpawnOnDetonate = "HydraTooth",
			--SpawnType = "UNIT",
			SkipSpawnsIfBlocked = true,
			DangerDistance = 0,
			CanBeReflected = false,
			Thing = {
				Graphic = "HydraTooth",
				Scale = 1,
				OffsetZ = 101,
				AttachedAnim = "LootShadowHydraTooth",
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Zeus",
			InheritFrom = "LavaPuddleLarge",
			Thing =
			{
				Graphic = "GreekFireLarge_Zeus",
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Hera",
			InheritFrom = "LavaPuddleLarge",
			Thing =
			{
				Graphic = "GreekFireLarge_Hera",
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Poseidon",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Poseidon",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Demeter",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Demeter",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Apollo",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Apollo",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Aphrodite",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Aphrodite",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Hephaestus",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Hephaestus",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Hestia",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Hestia",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "LavaPuddleLarge_Ares",
			InheritFrom = "LavaPuddleLarge",
			Thing = 
				{
					Graphic = "GreekFireLarge_Ares",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Zeus",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Zeus",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Zeus",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Hera",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Hera",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Hera",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Poseidon",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Poseidon",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Poseidon",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Demeter",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Demeter",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Demeter",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Apollo",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Apollo",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Apollo",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Aphrodite",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Aphrodite",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Aphrodite",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Hephaestus",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Hephaestus",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Hephaestus",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Hestia",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Hestia",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Hestia",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SplitShotSmall_Ares",
			InheritFrom = "SpreadShotBolt",
			DissipateFx = "EnemyProjectileDissipate",
			DeathFx = "EnemyProjectileDissipate",
			ImpactFx = "HadesEnemyProjectileImpact_Ares",
			Thing = 
				{
					Graphic = "HadesEnemyProjectileIn_Ares",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "SatyrRangedWeaponplayer",
			InheritFrom = "1_BaseEnemyProjectileReflectable",
			Type = "STRAIGHT",
			AffectsEnemies = true,
			AffectsFriends = false,
			ImpactFx = "PoisonSprayRandom",
			ImpactSound = "null",
			CheckUnitImpact = true,
			CheckObstacleImpact = true,
			UnlimitedUnitPenetration = false,
			Range = 1000,
			Speed = 2000,
			DamageLow = 1,
			DamageHigh = 1,
			CanHitWithoutDamage = true,
			StartDelay = 0,
			DangerDistance = 200,
			Thing = {
				Graphic = "SatyrDart",
				AttachedAnim = "DefaultShadow",
				OffsetZ = 55,
				Grip = 999999,
				Points = {
					{
						X = 0,
						Y = 24,
					},
					{
						X = 48,
						Y = 0,
					},
					{
						X = 0,
						Y = -24,
					},
					{
						X = -48,
						Y = 0,
					},
				},
			},
			Effects =
			{
				{
				Name = "HeroOnHitStun",
				Duration = 0.2,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = false,
				Active = true,
				CanAffectInvulnerable = false,
				Cancelable = true,
				},
				{
					Name = "StyxPoison",
					Type = "DAMAGE_OVER_TIME",
					Amount = 10,
					Cooldown = 0.23,
					InitialDelay = 1,
					Duration = 8,
					Stacks = true,
					MaxStacks = 100,
					ExtendDurationOnReapply = false,
					SilentImpact = true,
					FrontFx = "PoisonStatusFx",
					Active = true,
				},
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer",
			-- Can't inherit from PoisonPuddleSmall as that causes MedeaPoison to also be applied
			InheritFrom = "1_BaseEnemyProjectileUndestroyable",
			Type = "INSTANT",
			GroupName = "FX_Terrain",
			Range = 0,
			CheckObstacleImpact = false,
			UnlimitedUnitPenetration = true,
			AffectsFriends = true,
			DamageRadiusScaleX = 1.0,
			DamageRadiusScaleY = 0.6,
			TotalFuse = 5.0,
			Fuse = 0.5,
			InflictedDamageSound = "/SFX/BurnDamageSizzle",
			InflictedDamageFx = "Immolation",
			ImmunityKey = "PoisonPuddle",
			CanHitWithoutDamage = true,
			Damage = 0,
			MoveInterval = 0.19,
			MaxVictimZ = 1,
			MultiDetonate = true,
			CanBeReflected = true,
			CanBeProjectileDefenseDestroyedByName = "ZombieHRFire",
			DamageRadius = 80,
			DissipateFx = "PoisonPoolSmallOut",
			Thing = {
				Graphic = "PoisonPoolSmall",
			},
			Effects = {
				{
					Name = "StyxPoison",
					Type = "DAMAGE_OVER_TIME",
					Amount = 10,
					Cooldown = 0.16,
					InitialDelay = 0.85,
					Duration = 8,
					Stacks = true,
					MaxStacks = 100,
					ExtendDurationOnReapply = false,
					SilentImpact = true,
					FrontFx = "PoisonStatusFx",
					Active = true,
				},
			},
	})

	table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Zeus",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing =
			{
				Graphic = "PoisonPoolSmall_Zeus",
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Hera",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing =
			{
				Graphic = "PoisonPoolSmall_Hera",
			},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Poseidon",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Poseidon",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Demeter",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Demeter",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Apollo",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Apollo",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Aphrodite",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Aphrodite",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Hephaestus",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Hephaestus",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Hestia",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Hestia",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesPoisonPuddleSmallplayer_Ares",
			InheritFrom = "HadesPoisonPuddleSmallplayer",
			Thing = 
				{
					Graphic = "PoisonPoolSmall_Ares",
				},
		})

		table.insert(data.Projectiles,
		{
			Name = "DisembodiedHandGrabPlayer",
			InheritFrom = "1_BaseEnemyProjectileReflectable",
			DetonateGraphic = "null",
			Type = "STRAIGHT",
			AffectsEnemies = true,
			AffectsFriends = false,
			AffectsSelf = false,
			CheckUnitImpact = true,
			CheckObstacleImpact = false,
			UnlimitedUnitPenetration = true,
			AttachToOwner = true,
			CanBeProjectileDefenseDestroyed = false,
			StartDelay = 0.08,
			Fuse = 0.3,
			DamageLow = 5,
			DamageHigh = 5,
			ImpactVelocity = 0,
			UseArmor = true,
			UseVulnerability = true,
			InflictedDamageFx = "SwarmerBiteFx",
			ImmunityDuration = 2.5,
			ImpactLineOfSightFromOwner = true,
			Effect = {
				Name = "OnHitStun",
				Duration = 1.1,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = true,
				Active = true,
				CanAffectInvulnerable = false,
				Cancelable = false,
				FrontFx = "EnemyWringerChainGrab",
				BackFx = "EnemyWringerChainGrabBack",
				ClearOnAttack = true,
			},
			Thing = {
				Graphic = "null",
				RotateGeometry = true,
				Grip = 999999,
				Points = {
					{
						X = 110,
						Y = 40,
					},
					{
						X = 110,
						Y = -40,
					},
					{
						X = -10,
						Y = -60,
					},
					{
						X = -10,
						Y = 60,
					},
				}
			}
		})

		table.insert(data.Projectiles,
		{
		Name = "HadesCastPlayer",
		InheritFrom = "1_BaseEnemyProjectileReflectable",
		DetonateGraphic = "null",
		Type = "HOMING",
		StartDelay = 0.1,
		MaxAdjustRate = 70,
		AffectsEnemies = true,
		AffectsFriends = false,
		AffectsSelf = false,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		NumPenetrations = 0,
		Range = 2000.0,
		Speed = 1250.0,
		DamageRadius = 0,
		Damage = 250,
		CriticalFx = "CriticalHit",
		HitVulnerabilityFx = "Backstab",
		CanBeProjectileDefenseDestroyed = false,
		CanBeProjectileDefenseDestroyedByName = "DionysusField",
		UseArmor = true,
		UseVulnerability = false,
		DissipateFx = "BloodstoneHitFxHades",
		StartFx = "ProjectileFireRing-Bloodstone",
		ObstacleCollisionCheck = "PolygonContainsPoint",
		DangerDistance = 200,
		Thing = {
			Graphic = "BloodstoneProjectileHades",
			OffsetZ = 112,
			AttachedAnim = "LootShadowPetrifyProjectile",
			Grip = 999999,
			RotateGeometry = true,
			Tallness = 20,
			Points = {
				{
					X = 76,
					Y = 20,
				},
				{
					X = 76,
					Y = -20,
				},
				{
					X = -32,
					Y = -20,
				},
				{
					X = -32,
					Y = 20,
				},
			},	
		},
		Effect = {
			Name = "OnHitStun",
			Duration = 0.2,
			DisableMove = true,
			DisableRotate = true,
			DisableAttack = true,
			Active = true,
			CanAffectInvulnerable = false,
			Cancelable = true,
		},
		})

		table.insert(data.Projectiles,
		{
			Name = "HadesAmmoDropPlayer",
			InheritFrom = "1_BaseEnemyProjectile",
			ReflectFx = null,
			DetonateFx = "HadesFootstepSnowSpray",
			DetonateSound = "null",
			Type = "LOB",
			Damage = 0,
			DamageRadius = 0.0,
			AutoAdjustForTarget = false,
			Speed = 650,
			SpeedVariance = 150,
			MaxSpeed = 1575.0,
			LaunchAngle = 50,
			SpinRate = 0,
			MinRange = 0.0,
			ImpactVelocity = 0.0,
			AffectsFriends = false,
			AffectsSelf = false,
			CheckUnitImpact = false,
			CheckObstacleImpact = true,
			SpawnOnDetonate = "HadesAmmoPlayer",
			CanBeReflected = false,
			SpawnType = "UNIT",
			DangerDistance = 0,
			Thing = {
				Graphic = "HadesAmmo",
				Scale = 1,
				OffsetZ = 101,
				AttachedAnim = "LootShadowHydraTooth",
				Points = {
					{
						X = 0,
						Y = 24,
					},
					{
						X = 24,
						Y = 0,
					},
					{
						X = 0,
						Y = -24,
					},
					{
						X = -24,
						Y = 0,
					},
				},
			},
		})
    
		table.insert(data.Projectiles,
		{
			Name = "HadesAmmoWeaponPlayer",
			InheritFrom = "1_BaseEnemyProjectile",
			DetonateFx = "HadesCastNovaHit",
			Type = "STRAIGHT",
			DetonateSound = "null",
			Fuse = 0.0,
			CanBeReflected = false,
			CanBeProjectileDefenseDestroyed = false,
			AffectsEnemies = false,
			AffectsFriends = true,
			Range = 1.0,
			DamageRadius = 1600,
			DamageRadiusScaleY = 0.5,
			BlastSpeed = 875,
			NumPenetrations = 9999,
			AffectsSelf = false,
			CheckUnitImpact = true,
			CheckObstacleImpact = false,
			UnlimitedUnitPenetration = true,
			ResetCollisionOutsideDetonation = true,
			HollowBlastRadiusBand = 40,
			DangerDistance = 200,
			Damage = 200,
			ImpactVelocity = 0,
			CriticalFx = "CriticalHit",
			HitVulnerabilityFx = "Backstab",
			UseArmor = false,
			UseVulnerability = false,
			Thing = {
				Graphic = "HadesAmmoPushRing",
				Grip = 999999,
			},
			Effects = {
				{
				Name = "RushGrip",
				Type = "GRIP",
				Duration = 0.3,
				Modifier = 0.9,
				HaltOnEnd = true,
				Active = true,
				},
				{
				Name = "OnHitStun",
				Duration = 0.3,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = true,
				Active = true,
				CanAffectInvulnerable = true,
				Cancelable = true,
				},
			},
    	})

	end

			
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

	},

	BloodMineTossplayer =
	{

	},

	EarthElementalLaserplayer =
	{
		HitScreenshake = { Distance = 3, Speed = 1000, Duration = 0.12, FalloffSpeed = 3000 },
		HitSimSlowParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.01, LerpTime = 0 },
			{ ScreenPreWait = 0.03, Fraction = 1.0, LerpTime = 0 },
		},
		OutgoingDamageModifiers =
		{
			{
				NonPlayerMultiplier = 1,
			}
		},
	},

	SwarmerSpawnerplayer =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "Zombie",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
})

if ZagreusJourney then
	OverwriteTableKeys( ProjectileData, {
		SwarmerSpawnerplayer =
		{
			OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
			SpawnName = "HadesSwarmer",
			SpawnBounceOffVictim = false,
			SpawnBounceOffVictimVelocity = 0,
			SpawnBounceOffVictimUpwardVelocity = 0,
			SpawnsSkipActivatePresentation = true,
		},

		HydraSummonplayer =
		{
			OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
			SpawnName = "BloodlessNaked",
			SpawnBounceOffVictim = false,
			SpawnBounceOffVictimVelocity = 0,
			SpawnBounceOffVictimUpwardVelocity = 0,
			SpawnsSkipActivatePresentation = true,
		},

		HadesBloodMineTossplayer =
		{

		},
		
		HadesImpulseMineTossplayer = 
		{

		},

		HadesCastPlayer = 
		{
			CarriesSpawns = true,
			SpawnName = "HadesAmmoPlayer",
			AmmoDropProjectile = "HadesAmmoDropPlayer",
			StoredAmmoIcon = "AmmoEmbeddedInPlayerIcon",
			--OnDeathFunctionName = "NikkelM-Zagreus_Journey.ModsNikkelMHadesBiomesHandleHadesCastDeath",
			OnDeathFunctionName = "JarlUlsfark-Tools_of_the_Trade.ModsNikkelMHadesBiomesHandleHadesCastDeath_Kirbymod",
			AmmoDropDelay = 2.5,
			StoredAmmoVulnerabilityMultiplier = 2
		},

		HadesAmmoWeaponPlayer =
		{
			ImpactReactionHitsOverride = 1,

			HitScreenshake = { Distance = 3, Speed = 1000, Duration = 0.08, FalloffSpeed = 3000 },
			HitSimSlowParameters =
			{
				{ ScreenPreWait = 0.02, Fraction = 0.01, LerpTime = 0 },
				{ ScreenPreWait = 0.08, Fraction = 1.0,  LerpTime = 0 },
			},
		},
	})
end