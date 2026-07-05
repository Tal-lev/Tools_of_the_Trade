local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

table.insert( QuestOrderData, "Quest_Tools_Trade_Clear")
table.insert( QuestOrderData, "Quest_Tools_Trade_HammersTaken")
table.insert( QuestOrderData, "Quest_Kirby_below")
table.insert( QuestOrderData, "Quest_Kirby_above")
--if ZagreusJourney then
--    table.insert( QuestOrderData, "Quest_Kirby_behind")
--end

OverwriteTableKeys( QuestData, {
    Quest_Tools_Trade_Clear =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultKillQuest" },
		RewardResourceName = "Mixer5Common",
		RewardResourceAmount = 3,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "WeaponsUnlocked" },
				HasAll = { 
                    "ShovelRaiseDeadNecroMel", 
                    "TabletofPeaceKirbyMel", 
                },
			},
			{
				Path = { "GameState", "ClearedWithWeapons" },
				HasAll =
				{
					"WeaponAxe",
					"WeaponLob",
				},
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "ClearedWithAspects" },
				HasAll =
				{
					"ShovelRaiseDeadNecroMel",
                    "TabletofPeaceKirbyMel",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0623", Text = "The Arms of Night shall feast in all their forms." },
			},
		},
	},

    Quest_Tools_Trade_HammersTaken =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "MetaCurrency",
		RewardResourceAmount = 250,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    --Shovel
                    "ShovelNecroMelDoubleSummonTrait",
                    "ShovelNecroMelDeathminiSummonTrait",
                    "ShovelNecroMelRobotSummonTrait",
                    "ShovelNecroMelBloodCostTrait",
                    --Tablet
                    "TabletKirbyInfiniteAmmoTrait",
                    "TabletKirbyDoubleAmmoTrait",
                    "TabletKirbyMegaAmmoTrait",
				},
				Comparison = ">=",
				Value = 2,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
                     --Shovel
                    "ShovelNecroMelDoubleSummonTrait",
                    "ShovelNecroMelDeathminiSummonTrait",
                    "ShovelNecroMelRobotSummonTrait",
                    "ShovelNecroMelBloodCostTrait",
                    --Tablet
                    "TabletKirbyInfiniteAmmoTrait",
                    "TabletKirbyDoubleAmmoTrait",
                    "TabletKirbyMegaAmmoTrait",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},

    Quest_Kirby_below =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "MetaCurrency",
		RewardResourceAmount = 2500,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    --Erebus
                    "GuardCopyDisplayBoon",
                    "MageCopyDisplayBoon",
                    "BrawlerCopyDisplayBoon",
                    "SiegeVineCopyDisplayBoon",
                    "FogEmitterCopyDisplayBoon",
                    "ScreamerCopyDisplayBoon",
                    "RadiatorCopyDisplayBoon",
                    "TreantTailCopyDisplayBoon",
                    "WispCopyDisplayBoon",
                    "ZombieAssassin_MinibossCopyDisplayBoon",
                    "LightRangedCopyDisplayBoon",
                    "HecateOneCopyDisplayBoon",
                    
                    --Oceanus
                    "GuardtwoCopyDisplayBoon",
                    "TurtleCopyDisplayBoon",
                    "FishSwarmerCopyDisplayBoon",
                    "FishmanMeleeCopyDisplayBoon",
                    "FishmanRangedCopyDisplayBoon",
                    "WaterUnitCopyDisplayBoon",
                    "RadiatortwoCopyDisplayBoon",
                    "JellyfishCopyDisplayBoon",
                    "OctofishCopyDisplayBoon",
                    "WaterUnitMinibossCopyDisplayBoon",
                    "CrawlerMinibossCopyDisplayBoon",
                    "SirenDrummerCopyDisplayBoon",
                    "SirenKeytaristCopyDisplayBoon",
                    "ScyllaOneCopyDisplayBoon",
                    
                    --Mourning Fields
                    "CorruptedShadeSmallCopyDisplayBoon",
                    "CorruptedShadeMediumCopyDisplayBoon",
                    "CorruptedShadeLargeCopyDisplayBoon",
                    "BrokenHeartedCopyDisplayBoon",
                    "FogEmittertwoCopyDisplayBoon",
                    "LycanSwarmerCopyDisplayBoon",
                    "LycanthropeCopyDisplayBoon",
                    "ScreamertwoCopyDisplayBoon",
                    "VampireCopyDisplayBoon",
                    "TreantTailtwoCopyDisplayBoon",
                    "LamiaCopyDisplayBoon",
                    "Lamia_MinibossCopyDisplayBoon",
                    "InfestedCerberusOneCopyDisplayBoon",

                    --Tartarus
                    "SwarmerClockworkCopyDisplayBoon",
                    "ClockworkHeavyMeleeCopyDisplayBoon",
                    "GoldElementalCopyDisplayBoon",
                    "TimeElementalCopyDisplayBoon",
                    "SatyrLancerCopyDisplayBoon",
                    "SatyrRatCatcherCopyDisplayBoon",
                    "CrawlerCopyDisplayBoon",
                    "SatyrCultistCopyDisplayBoon",

                    "GoldElemental_MiniBossCopyDisplayBoon",
                    "SatyrRatCatcher_MinibossCopyDisplayBoon",
                    "ChronosOneCopyDisplayBoon",
                    "ChronosTwoCopyDisplayBoon",
                    "ZagreusOneCopyDisplayBoon",
                    "ZagreusTwoCopyDisplayBoon",

				},
				Comparison = ">=",
				Value = 2,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
                    --Erebus
                    "GuardCopyDisplayBoon",
                    "MageCopyDisplayBoon",
                    "BrawlerCopyDisplayBoon",
                    "SiegeVineCopyDisplayBoon",
                    "FogEmitterCopyDisplayBoon",
                    "ScreamerCopyDisplayBoon",
                    "RadiatorCopyDisplayBoon",
                    "TreantTailCopyDisplayBoon",
                    "WispCopyDisplayBoon",
                    "ZombieAssassin_MinibossCopyDisplayBoon",
                    "LightRangedCopyDisplayBoon",
                    "HecateOneCopyDisplayBoon",
                    
                    --Oceanus
                    "GuardtwoCopyDisplayBoon",
                    "TurtleCopyDisplayBoon",
                    "FishSwarmerCopyDisplayBoon",
                    "FishmanMeleeCopyDisplayBoon",
                    "FishmanRangedCopyDisplayBoon",
                    "WaterUnitCopyDisplayBoon",
                    "RadiatortwoCopyDisplayBoon",
                    "JellyfishCopyDisplayBoon",
                    "OctofishCopyDisplayBoon",
                    "WaterUnitMinibossCopyDisplayBoon",
                    "CrawlerMinibossCopyDisplayBoon",
                    "SirenDrummerCopyDisplayBoon",
                    "SirenKeytaristCopyDisplayBoon",
                    "ScyllaOneCopyDisplayBoon",
                    
                    --Mourning Fields
                    "CorruptedShadeSmallCopyDisplayBoon",
                    "CorruptedShadeMediumCopyDisplayBoon",
                    "CorruptedShadeLargeCopyDisplayBoon",
                    "BrokenHeartedCopyDisplayBoon",
                    "FogEmittertwoCopyDisplayBoon",
                    "LycanSwarmerCopyDisplayBoon",
                    "LycanthropeCopyDisplayBoon",
                    "ScreamertwoCopyDisplayBoon",
                    "VampireCopyDisplayBoon",
                    "TreantTailtwoCopyDisplayBoon",
                    "LamiaCopyDisplayBoon",
                    "Lamia_MinibossCopyDisplayBoon",
                    "InfestedCerberusOneCopyDisplayBoon",

                    --Tartarus
                    "SwarmerClockworkCopyDisplayBoon",
                    "ClockworkHeavyMeleeCopyDisplayBoon",
                    "GoldElementalCopyDisplayBoon",
                    "TimeElementalCopyDisplayBoon",
                    "SatyrLancerCopyDisplayBoon",
                    "SatyrRatCatcherCopyDisplayBoon",
                    "CrawlerCopyDisplayBoon",
                    "SatyrCultistCopyDisplayBoon",

                    "GoldElemental_MiniBossCopyDisplayBoon",
                    "SatyrRatCatcher_MinibossCopyDisplayBoon",
                    "ChronosOneCopyDisplayBoon",
                    "ChronosTwoCopyDisplayBoon",
                    "ZagreusOneCopyDisplayBoon",
                    "ZagreusTwoCopyDisplayBoon",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},

    Quest_Kirby_above =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "MetaCurrency",
		RewardResourceAmount = 2500,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    --Ephyra
                    "CarrionCopyDisplayBoon",
                    "ZombieCopyDisplayBoon",
                    "ZombieHeavyRangedCopyDisplayBoon",
                    "ZombieAssassinCopyDisplayBoon",
                    "MudmanEyeCopyDisplayBoon",
                    "MudmanCopyDisplayBoon",
                    "ZombieSpawnerCopyDisplayBoon",
                    "BoarCopyDisplayBoon",
                    "SatyrCrossbowCopyDisplayBoon",
                    "PolyphemusOneCopyDisplayBoon",
                    "Sheep_ExplosiveCopyDisplayBoon",
                    "Sheep_ZombieCopyDisplayBoon",

                    --Sea of Sorrows
                    "ZombieCrewmanCopyDisplayBoon",
                    "ScimiterrorCopyDisplayBoon",
                    "SticklerCopyDisplayBoon",
                    "SwabCopyDisplayBoon",
                    "DrunkCopyDisplayBoon",
                    "HarpyCutterCopyDisplayBoon",
                    "WaterElementalCopyDisplayBoon",
                    "MagetwoCopyDisplayBoon",
                    "CaptainCopyDisplayBoon",
                    "CharybdisTentacleCopyDisplayBoon",
                    "ErisOneCopyDisplayBoon",
                    "ErisTwoCopyDisplayBoon",
                   
                    --Mount Olympus
                    "ZombieOlympusCopyDisplayBoon",
                    "SentryBotCopyDisplayBoon",
                    "AutomatonBeamerCopyDisplayBoon",
                    "AutomatonEnforcerCopyDisplayBoon",
                    "HarpyDropperCopyDisplayBoon",
                    "SatyrCrossbowtwoCopyDisplayBoon",
                    "SatyrLancertwoCopyDisplayBoon",
                    "SatyrSapperCopyDisplayBoon",
                    "TalosCopyDisplayBoon",
                    "HeraclesOneCopyDisplayBoon",
                    "PrometheusOneCopyDisplayBoon",
                   
                    --The Summit
                    "SimpleCopyDisplayBoon",
                    "StalkerCopyDisplayBoon",
                    "BruteCopyDisplayBoon",
                    "MatiCopyDisplayBoon",
                    "DragonBurrowerCopyDisplayBoon",
                    "EarthElementalCopyDisplayBoon",
                    "Stalker_MinibossCopyDisplayBoon",
                    "Brute_MinibossCopyDisplayBoon",
                    "TyphonTailCopyDisplayBoon",
                    "TyphonEyeCopyDisplayBoon",
                    "TyphonHeadOneCopyDisplayBoon",

				},
				Comparison = ">=",
				Value = 2,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
                    --Ephyra
                    "CarrionCopyDisplayBoon",
                    "ZombieCopyDisplayBoon",
                    "ZombieHeavyRangedCopyDisplayBoon",
                    "ZombieAssassinCopyDisplayBoon",
                    "MudmanEyeCopyDisplayBoon",
                    "MudmanCopyDisplayBoon",
                    "ZombieSpawnerCopyDisplayBoon",
                    "BoarCopyDisplayBoon",
                    "SatyrCrossbowCopyDisplayBoon",
                    "PolyphemusOneCopyDisplayBoon",
                    "Sheep_ExplosiveCopyDisplayBoon",
                    "Sheep_ZombieCopyDisplayBoon",

                    --Sea of Sorrows
                    "ZombieCrewmanCopyDisplayBoon",
                    "ScimiterrorCopyDisplayBoon",
                    "SticklerCopyDisplayBoon",
                    "SwabCopyDisplayBoon",
                    "DrunkCopyDisplayBoon",
                    "HarpyCutterCopyDisplayBoon",
                    "WaterElementalCopyDisplayBoon",
                    "MagetwoCopyDisplayBoon",
                    "CaptainCopyDisplayBoon",
                    "CharybdisTentacleCopyDisplayBoon",
                    "ErisOneCopyDisplayBoon",
                    "ErisTwoCopyDisplayBoon",
                   
                    --Mount Olympus
                    "ZombieOlympusCopyDisplayBoon",
                    "SentryBotCopyDisplayBoon",
                    "AutomatonBeamerCopyDisplayBoon",
                    "AutomatonEnforcerCopyDisplayBoon",
                    "HarpyDropperCopyDisplayBoon",
                    "SatyrCrossbowtwoCopyDisplayBoon",
                    "SatyrLancertwoCopyDisplayBoon",
                    "SatyrSapperCopyDisplayBoon",
                    "TalosCopyDisplayBoon",
                    "HeraclesOneCopyDisplayBoon",
                    "PrometheusOneCopyDisplayBoon",
                   
                    --The Summit
                    "SimpleCopyDisplayBoon",
                    "StalkerCopyDisplayBoon",
                    "BruteCopyDisplayBoon",
                    "MatiCopyDisplayBoon",
                    "DragonBurrowerCopyDisplayBoon",
                    "EarthElementalCopyDisplayBoon",
                    "Stalker_MinibossCopyDisplayBoon",
                    "Brute_MinibossCopyDisplayBoon",
                    "TyphonTailCopyDisplayBoon",
                    "TyphonEyeCopyDisplayBoon",
                    "TyphonHeadOneCopyDisplayBoon",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},

})