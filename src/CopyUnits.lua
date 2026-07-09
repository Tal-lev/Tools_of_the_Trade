local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

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

	HadesMineBlastPlayer =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "HadesMineBlastPlayer",

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

if ZagreusJourney then
	OverwriteTableKeys(WeaponSetData, {
		HadesMineBlastPlayer =
		{
			AIData =
			{
				DeepInheritance = true,

				ProjectileName = "HadesMineBlastPlayer",

				FireProjectileAtSelf = true,
				FireFromTarget = true,

				PreAttackDuration = 0.0,
				FireDuration = 0.0,
				PostAttackDuration = 0.0,

				MoveWithinRange = false,
				AttackDistance = 9999999,
			},
		},

		HadesAmmoWeaponPlayer = 
		{
			HitScreenshake = {
				Duration = 0.08,
				FalloffSpeed = 3000,
				Speed = 1000,
				Distance = 3,
			},
			HitSimSlowParameters = {
				{
					LerpTime = 0,
					Fraction = 0.01,
					ScreenPreWait = 0.02,
					ScreenPreWait = 0.08,

				},
				{
					LerpTime = 0,
					Fraction = 1,
				},
			},
			ImpactReactionHitsOverride = 1,
			Sounds = {
				FireSounds = {
					{
						Name = "/Leftovers/Menu Sounds/TextReveal3Distance"
					},
				},
			},
			AIData = {
				BarrelLength = 90,
				ProjectileName = "HadesAmmoWeaponPlayer"
			},
		},

	})
end

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

	if ZagreusJourney then

		table.insert(data.Units,
		{
			Name = "HadesBloodMinePlayer",
			InheritFrom = "BloodMinePlayer",
		})

		table.insert(data.Units,
		{
			Name = "HadesAmmoPlayer",
			InheritFrom = "1_BaseTrap",
			AutoLockable = true,
			BlockAllEffects = false,
			DisplayInEditor = true,
			ImmuneToStun = true,
			Life = 
			{
				DeathFx = "HadesAmmoBurst",
				DeathSound = "/SFX/Enemy Sounds/Hades/HadesFireSkullImpact",
				HomingEligible = true,
				JumpTargetEligible = true,
				RequiresDamageToAffect = false,
				InvulnerableFx = "Invincibubble",
			
			},
			Thing = 
			{
				AttachedAnim = "LootShadowHydraTooth",
				EditorOutlineDrawBounds = false,
				Graphic = "HadesAmmo",
				Grip = 6000.0,
				ImmuneToForce = true,
				OnTouchdownFxAnim = "DoorCloseDust",
				SelectionHeight = 200.0,
				SelectionWidth = 200.0,
				SelectionShiftY = -40.0,
				Points = {
				{ X = 0, Y = 16, },
				{ X = 32, Y = 0,},
				{ X = 0, Y = -16, },
				{ X = -32, Y = 0,},
				}
			},
    	})
	

	end

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

if ZagreusJourney then
	OverwriteTableKeys( EnemyData, {
		HadesBloodMinePlayer =
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
			OnDeathFireWeapons = { "HadesMineBlastPlayer" },

			DissipateAnimation = "BloodMineDeactivated",
			FuseAnimation = "BloodMineActivated",
			FuseWarningProjectileName = "HadesMineBlastPlayer",
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

		HadesAmmoPlayer =
		{
			CanBeChainAggroed = true,
			AggroIfLastAlive = true,
			ActivateFx = "EnemySummonRune",
			CanBeFrozen = true,
			UseActivatePresentation = false,
			StunAnimations = {
				Default = "Blank",
			},
			HeraclesCombatMoneyValue = 1,
			CollisionReactions = {
				{
					MinVelocity = 700,
					Cooldown = 0.25,
					Damage = {
						PerVelocity = 0.01,
					},
				},
			},
			DestroyDelay = 0.15,
			NilValues = {
				ActivateFx2 = true,
				ActivateFxPreSpawn = true,
			},
			AggroReactionTimeMin = 0.05,
			HealthBufferedRegenTick = 0.05,
			IncomingDamageModifiers = {
				{
					Multiplicative = true,
					NonPlayerMultiplier = 10,
					Name = "BaseVulnerability",
				},
			},
			PreSpawnAggroReactionTimeMin = 0.05,
			DefaultAIData = {
				PreAttackEndStop = false,
				StopMoveWithinRange = true,
				DontRetreatIfCharmed = true,
				AttackDistanceBuffer = 50,
				PreAttackAngleTowardTarget = true,
				SkipSelfVelocityIfImpactSlow = false,
				PostAttackCooldown = 0,
				PreAttackStop = false,
				PostAttackStop = false,
				PreAttackDuration = 2, -- Changed from 5
				DeepInheritance = true,
				MoveWithinRange = true,
			},
			RotateOnAggro = true,
			InvulnerableHitFx = "InvincibleHitSpark",
			WeaponOptions = {
				"HadesAmmoWeaponPlayer", -- Changed from "HadesAmmoWeapon"
			},
			AggroReactionTimeMax = 0.2,
			DisplayAttackTimer = true,
			HealthBufferedRegenAmount = 0.01,
			UseShrineUpgrades = false, -- Changed from true
			AddToEnemyTeam = true,
			ModsNikkelMHadesBiomesIsModdedEnemy = true,
			MaxHitShields = 5,
			IsAggroedSound = "/SFX/Enemy Sounds/Swarmer/EmoteAlerted",
			ActivateFadeInDuration = 1,
			DeathAnimation = "HadesAmmoBurst",
			TriggersOnDamageEffects = true,
			IgnoreCastSlow = true,
			SimulationSlowOnHit = true,
			BlockCharm = true,
			AIOptions = {
				"NikkelM-Zagreus_Journey.ModsNikkelMHadesBiomesAttackAndDie",
			},
			ProjectilesCollideWithGroupsCharmed = {
				"EnemyTeam",
			},
			HealthBufferedGripBonus = 0,
			NoTargetWanderDuration = 1,
			ActivateStartAlpha = 1,
			InheritFrom = {
				"HadesBaseVulnerableEnemy",
			},
			StunAnimationOrder = {
				BlockStun = 2,
				Heavy = 1,
				Default = 1,
				Lightning = 1,
				Light = 2,
			},
			NoTargetWanderDistance = 200,
			ManualDeathAnimation = true,
			TraitIndex = {},
			MaxHealth = 350,
			ShrineMetaUpgradeRequiredLevel = 4,
			InvulnerableFx = "Invincibubble",
			HealthBufferedRegenHitDelay = 1,
			ShrineDataOverwrites = {
				AddDumbFireWeaponsOnSpawn = {
					{
						"HadesAmmoWeaponSlowPools",
					},
				},
			},
			BlocksLootInteraction = true,
			ShrineMetaUpgradeName = "BossDifficultyShrineUpgrade",
			ChainAggroAllEnemies  = true,
			DamagedFxStyles = {
				Rapid = "HitSparkEnemyDamagedRapid",
				Default = "HitSparkEnemyDamaged",
			},
			SpellSummonDataOverrides = {
				SkipMapStateAggroTracking = true,
				PostAggroAI = "AttackerAI",
				DeepInheritance = true,
				StartAggroed = true
			},
			RequiredKill = false,
			DropItemsOnDeath = true,
			Material = "Organic",
			TriggersOnHitEffects = true,
			DamageType = "Enemy",
			MoneyDropOnDeath = {
				Chance = 0,
			},
			DreamBiomeData = {
				{ --1
					DataOverrides = {
						HealthMultiplier = 0.2,
						MoneyMultiplier = 0.7,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 0.75,
					},
				},
				{ --2
					DataOverrides = {
						HealthMultiplier = 0.35,
						MoneyMultiplier = 0.7,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 1.2,
					},
				},
				{ --3
					DataOverrides = {
						HealthMultiplier = 0.8,
						MoneyMultiplier = 0.7,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 1.55,
					},
				},
				{ --4
					DataOverrides = {
						HealthMultiplier = 1.35,
						MoneyMultiplier = 0.7,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 1.55,
					},
				},
				{ --5
					DataOverrides = {
						HealthMultiplier = 1.76,
						MoneyMultiplier = 1,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 1.86,
					},
				},
				{ --6
					DataOverrides = {
						HealthMultiplier = 2.29,
						MoneyMultiplier = 1,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 2.23,
					},
				},
				{ --7
					DataOverrides = {
						HealthMultiplier = 2.98,
						MoneyMultiplier = 1.2,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 2.68,
					},
				},
				{ --8
					DataOverrides = {
						HealthMultiplier = 3.87,
						MoneyMultiplier = 1.2,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 3.22,
					},
				},
				{ --9
					DataOverrides = {
						HealthMultiplier = 5.03,
						MoneyMultiplier = 1.2,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 3.87,
					},
				},
				{ --10
					DataOverrides = {
						HealthMultiplier = 6.53,
						MoneyMultiplier = 1.5,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 4.65,
					},
				},
				{ --11
					DataOverrides = {
						HealthMultiplier = 8.48,
						MoneyMultiplier = 1.5,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 5.59,
					},
				},
				{ --12
					DataOverrides = {
						HealthMultiplier = 11.01,
						MoneyMultiplier = 1.5,
					},
					AddOutgoingDamageModifier = {
						PlayerMultiplier = 6.72,
					},
				},
			},
			ActivateTintDuration = 0.25,
			BlockRespawnShrineUpgrade = true,
			ImmuneToPolymorph = true,
			AIWanderDistance = 200,
			IsBossDamage = true,
			AIAggroRange = 600,
			AttackTimerOffsetY = -170,
			BlockDamageNumbersByGroups = {
				"EnemyTeam",
			},
			ActivateTintDelay = 1.5,
			GeneratorData = {
				DifficultyRating = 1,
			},
			ActivateFxPreSpawnDelay = 1.5,
			ActivateFadeIn = false,
			Groups = {
				"GroundEnemies",
			},
			ActivateDuration = 1.8,
			ActivateTint = false,
			HitInvulnerableText = "Combat_Invulnerable",
			DeathSound = "/SFX/Enemy Sounds/Hades/HadesFireSkullImpact",
			HealthBarOffsetY = -210,
			BlockRaiseDead = true,
			RunHistoryKilledByName = "NPC_Hades_01",
			ActivateFadeInDelay = 0.5,
			PreSpawnAggroReactionTimeMax = 0.45,
			HealthBarType = "Medium",
			SpellSummonDefaultAIDataOverrides = {
				SurroundAIKey = "SummonedUnit",
			},
			EndThreadWaitsOnStun = true,
		},	
	})

end
























