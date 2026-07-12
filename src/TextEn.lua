--inserting Keywords
local newKeywords = {
	"KirbyBoilingBlood",
}
game.ConcatTableValuesIPairs(game.KeywordList, newKeywords)

--Inserts text
	local TextOrder = {
    "Id",
    "InheritFrom",
    "DisplayName",
    "Description",
	"OverwriteLocalization",
	}

local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/TraitText.en.sjson')
sjson.hook(file, function(data)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "KirbyBoilingBlood",
			DisplayName = "Boiling Blood",
			Description = "Recipient receives Double Damage.",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelRaiseDeadNecroMel",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Silver Spade",
			Description = "Your {$Keywords.Attack} {$Keywords.ReserveHealth} to Summon. Your {$Keywords.Cast} teleports your Summons to your location."
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelRaiseDeadNecroMel_Shop",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Silver Spade:",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelRaiseDeadNecroMel_Upgrade",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Silver Spade {$TooltipData.AspectRarityText}",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelRaiseDeadNecroMel_FlavorText",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Happy Digging.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelRaiseDeadNecroMelStat",
			InheritFrom = "BaseBoonMultiline",
		    DisplayName = "{!Icons.Bullet}{#PropertyFormat}Health Primed:",
		    Description = "{#UpgradeFormat}{$TooltipData.ExtractData.PrimedHealth} per 100{!Icons.Health}"
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelNecroMelDeathminiSummonTrait",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Arise Again",
			Description = "When an {$Keywords.Attack} Summon dies a {#UpgradeFormat}50% {#Prev} weaker Summon is born.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelNecroMelDoubleSummonTrait",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Twin Summons",
			Description = "Your {$Keywords.Attack} summons {#UpgradeFormat}2 {#Prev}minions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelNecroMelRobotSummonTrait",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Scrap Metal",
			Description = "Your {$Keywords.Attack} summons a {#UpgradeFormat}Sentry Bot {#Prev}and your {$Keywords.AttackEX} summons an {#UpgradeFormat}Automaton Beamer{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShovelNecroMelBloodCostTrait",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Blood Pact",
			Description = "{$Keywords.ReserveHealth} from summoning {#UpgradeFormat}does not scale {#Prev}with Max {$Keywords.Health}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TabletofPeaceKirbyMel",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Tablet of Peace",
			Description = "Your {$Keywords.Attack} copies the enemy's weapon. Your {$Keywords.AttackEX} Releases the copied weapon."
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TabletofPeaceKirbyMel_Shop",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Tablet of Peace:",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TabletofPeaceKirbyMel_Upgrade",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "The Tablet of Peace {$TooltipData.AspectRarityText}",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletofPeaceKirbyMelStat",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "{!Icons.Bullet}{#PropertyFormat}Omega Attack Damage:",
		Description = "{#UpgradeFormat}{$TooltipData.StatDisplay1}",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyInfiniteAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Permenant Reflection",
		Description = "Your copied {$Keywords.Attack} never expires. {$Keywords.AttackEX} releases the copy.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyDoubleAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Extended Reflection",
		Description = "Your {$Keywords.Attack} have {#UpgradeFormat}+30 {#Prev}Ammo.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyMegaAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Fractured Reflection",
		Description = "Your {$Keywords.Attack} deals {#UpgradeFormat}+50% {#Prev}damage but always copies the last enemy hit.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyAuraShotTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Mirror Blast",
		Description = "Your {$Keywords.Attack} fires a {#UpgradeFormat}Weaker {#Prev}version of the {$Keywords.AttackEX} {#UpgradeFormat} Blast {#Prev}upon damaging an enemy.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Copy_EmptyText",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = " ",
      		OverwriteLocalization = true,
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Copy_2nd",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "2nd",
      		OverwriteLocalization = true,
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Hint_OutOfCopyLobAmmo",
			DisplayName = "Copy Spent!",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "CopyAbility_FlavorText",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Those who oppose the will of Night will soon get a taste of their own medicine.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DummyCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability",
			Description = "Upon hit Your Attacks Copy  the enemy's Attack.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardCopyDisplayBoon",
			Description = "Your Attacks Swings around you .",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Whisper",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardtwoCopyDisplayBoon",
			Description = "Your Attacks rapidly Swings around you .",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wet-Whisper",
		},
		TextOrder)
	)
	
	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MageCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Casket",
			Description = "Your Attacks fires {#UpgradeFormat}3 {#Prev}projectiles in rapid succession.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wastrel",
			Description = "Your Attacks Charge and swipe forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SiegeVineCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Thorn-Weeper",
			Description = "Your Attacks fire a slow homing  projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wailer",
			Description = "Your Attack fires a prolonged short-range wave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dread-Wailer",
			Description = "Your Attack fires a prolonged wave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatorCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spindle",
			Description = "Your Attack fires a rotating beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantTailCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Root-Stalker Tail",
			Description = "Your Attack Swipes around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Root-Stalker",
			Description = "Your Attack fires aBarrage of Splinters.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TreantTailtwoCopyDisplayBoon",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Copy: Brush-Stalker Tail",
		Description = "Your Attack Swipes around you.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreanttwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Brush-Stalker",
			Description = "Your Attack fires aBarrage of Splinters.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmitterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shadow-Spiller",
			Description = "Your Attack Slams the ground in front of you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WispCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lanthorn",
			Description = "Your Attack Explodes  Around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sister of the Dead",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HecateOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hecate Torch-Cone",
			Description = "Your Attack fires Cones of Flame in both directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lurker",
			Description = "Your Attack Stabs forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Pinhead",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TurtleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shellback",
			Description = "Your Attack fires a Bouncing ball.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hippo",
			Description = "Your Attack fires a Homing Explosive projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sea-Serpent",
			Description = "Your Attack fires a Spit projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Deep Serpent",
			Description = "Your Attack fires a Splitting Spit projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatortwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sop-Spindle",
			Description = "Your Attack fires a long rotating beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "JellyfishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Jelly-Fish",
			Description = "Your Attack stings lightning around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "OctofishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hellifish",
			Description = "Your Attack fires a Splash of Ink.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ThiefMineLayerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Pest",
			Description = "Your Attack Throw Proximity Mines.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: King Vermin",
			Description = "Your Attack Charges forward and Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenDrummerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Roxy",
			Description = "Your Attack fires a long cooldown Beat Nova.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenKeytaristCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Jetty",
			Description = "Your Attack becomes a Power Slide.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScyllaOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Scylla Notes",
			Description = "Your Attack fires  Homing Musical Notes.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessNakedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bloodless",
			Description = "Your Attack Charges forward.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessGrenadierCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Inferno-Bomber",
			Description = "Your Attack lobs a Grenade.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessSelfDestructCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Slam-Dancer",
			Description = "Your Attack Explodes Underneath.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessPitcherCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Burn-Flinger",
			Description = "Your Attack Flingsa Grenade.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessWaveFistCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wave-Maker",
			Description = "Your Attack fires aWave Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spreader",
			Description = "Your Attack fires {#UpgradeFormat}5 {#Prev}Projectiles in a Fan Formation.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeSmallCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Blight-Shade",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeMediumCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Blood-Shade",
			Description = "Your Attack Rams forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeLargeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bloat-Shade",
			Description = "Your Attack fires a Spiky Nova around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmittertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sorrow-Spiller",
			Description = "Your Attack Sweeps in front of you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrokenHeartedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Smacker",
			Description = "Your Attack Slams the ground.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Canine",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LovesickCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Holeheart",
			Description = "Your Attack Throw Heart Mines.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanthropeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lycaon",
			Description = "Your Attack Pounces   on enemies and Swipes down with Claws.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MournerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Mourner",
			Description = "Your Attack throws a Flurry of Fists.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LamiaCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lamia",
			Description = "Your Attack fires a homing beam from the sky .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Lamia_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Queen Lamia",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}homing beam from the sky.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "VampireCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Phantom",
			Description = "Your Attacks Claw forward and Steals Life.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "InfestedCerberusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Cerberus Fire-Breath",
			Description = "Your Attack transforms into a Fire Breath.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwarmerClockworkCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sandskull",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DisembodiedHandCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wringer",
			Description = "Your Attack Grabs enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ClockworkHeavyMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Thug",
			Description = "Your Attack Shoves enemies away.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Goldwraith",
			Description = "Your Attack fires a Penetrating Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElemental_MiniBossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Goldwrath",
			Description = "Your Attack fires numerous coins in all directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TimeElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tempus",
			Description = "Your Attack fires a projectile in a growing Spiral Pattern.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Hoplite",
			Description = "Your Attack throws a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcherCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Vierophant",
			Description = "Your Attack fires a Homing Flaming Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcher_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: The Verminancer",
			Description = "Your Attack Tail Swipes while Dashing.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Crawler",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCultistCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Supplicant",
			Description = "Your Attack Throws a Dagger.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Chronos Scythe Throw",
			Description = "Your Attack transforms into a Large Spinning Scythe.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Chronos Time Stasis",
			Description = "Your Attack Stops enemies in a Moment in Time.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZagreusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Zagreus - Blood Cast",
			Description = "Your Attack fires a Blood Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZagreusTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Zagreus - Spear Spin",
			Description = "Your Attack Spins a Spear around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CarrionCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bronzebeak",
			Description = "Your Attack Swoops onto enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCrewmanCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sea-Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieOlympusCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Snow-Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieHeavyRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lubber",
			Description = "Your Attack throws a Burning Barrel.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassinCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Cutthroat",
			Description = "Your Attack becomes a Flurry of Stabs.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassin_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Master-Slicer",
			Description = "Your Attack becomes a Flurry of Stabs.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eidolon",
			Description = "Your Attack throws a Projectile  which spawns an Eye-dolon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanEyeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eye-dolon",
			Description = "Your Attack transforms into a Small Explosion.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieSpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tombstone",
			Description = "Your Attack throws a Projectile  which spawns a Zombie.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SoulPylonCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Soul Pylon",
			Description = "Your Attack Summons {#UpgradeFormat}3 {#Prev} Shades.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BoarCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Erymanthian Boar",
			Description = "Your Attack Stomps the ground creating a Shockwave in all directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Champion",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}homing bolts .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ExplosiveCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Black Sheep",
			Description = "Your Attack creates an Explosion .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ZombieCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shamble Sheep",
			Description = "Your Attack Rams forward dazing enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PolyphemusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Polyphemus Kick",
			Description = "Your Attack Kicks forward creating a Shockwave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScimiterrorCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Seesword",
			Description = "Your Attack Slashes forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SticklerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Stickler",
			Description = "Your Attack Throws  a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwabCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Anchor",
			Description = "Your Attack fires a Powerful Blast  with a Long Cooldown.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DrunkCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Boozer",
			Description = "Your Attack Slashes before you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyCutterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Harpy Talon",
			Description = "Your Attack Slices forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Droplet",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MagetwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Blasket",
			Description = "Your Attacks fires {#UpgradeFormat}3 trios {#Prev}of projectiles in rapid succession.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CaptainCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: The Yargonaut",
			Description = "Your Attacks fires {#UpgradeFormat}3 {#Prev}Pistol Shots that Bounce off walls.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharybdisTentacleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Charybdis Tentacle",
			Description = "Your Attack shoots a Homing Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ErisOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eris Sniper-Shot",
			Description = "Your Attack shoots along range sniper shot.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ErisTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eris Laser",
			Description = "Your Attack fires a Laser Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SentryBotCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Seeker",
			Description = "Your Attack fire a projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonBeamerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Watcher",
			Description = "Your Attack fires {#UpgradeFormat}10 {#Prev}Beams.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonEnforcerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Forcer",
			Description = "Your Attack transforms into Rotating blades.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyDropperCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Harpy Raptor",
			Description = "Your Attack fires a Tornado.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowtwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Raider",
			Description = "Your Attack fires a Crossbow Bolt.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Goldpike",
			Description = "Your Attack throws a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrSapperCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Sapper",
			Description = "Your Attack fires a Exploding Rocket.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TalosCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Talos",
			Description = "Your Attack throws a Spinning Shield.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeraclesOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Heracles Spin",
			Description = "Your Attack Spins around you in a Barrage of Blows.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PrometheusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Prometheus Fire-Pillar",
			Description = "Your Attack fires a Burning Pillar.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SimpleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Polyp",
			Description = "Your Attack creates a Small Damaging Aura infront.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "StalkerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Stalker",
			Description = "Your Attack fire {#UpgradeFormat}2 Linear Shockwaves.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Stalker_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Twins of Typhon",
			Description = "Your Attack fire {#UpgradeFormat}2 {#Prev}Linear Shockwaves.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BruteCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Horror",
			Description = "Your Attack transforms into a Horn Charge.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MatiCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eyesore",
			Description = "Your Attack fire a Homing Splitting Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DragonBurrowerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Land-Dracon",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "EarthElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Headstone",
			Description = "Your Attack fires a Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Brute_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spawn of Typhon",
			Description = "Your Attack Swipes forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonTailCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tail of Typhon",
			Description = "Your Attack fires a Rotating Drill.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonEyeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eye of Typhon",
			Description = "Your Attack fires a Lobbed Splitting Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonEggCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Egg of Typhon",
			Description = "Each Location your Attack transforms into one of the Spawns of Typhon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonHeadOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Typhon Tongue-Lash",
			Description = "Your Attack fires a Lashing Tongue of Typhon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonHeadTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Typhon Headbutt",
			Description = "Your Attack Headbutts the ground before you.",
		},
		TextOrder)
	)

	if ZagreusJourney then
		
		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Numbskull",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightSpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Skullomat",
			Description = "Your Attack Spawns a Numbskull.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "PunchingBagUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Lout",
			Description = "Your Attack Dashes forward.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesLightRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Witch",
			Description = "Your Attack fire a Projectile.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Brimstone",
			Description = "Your Attack fire a Non-Rotating Beam.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Thug",
			Description = "Your Attack Swipes before you.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesThiefMineLayerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Pest",
			Description = "Your Attack Throw Proximity Mines.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "WretchAssassinMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Sneak",
			Description = "Your Attack throws{#UpgradeFormat}3 {#Prev}consecutive Projectiles.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedSplitterMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Doomstone",
			Description = "Your Attack fires {#UpgradeFormat}8 {#Prev}Non-Rotating Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Megaera Whip-Fury",
			Description = "Your Attack Whips All-Around.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpytwoOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Alecto Saw-Shot",
			Description = "Your Attack fires a Spinning Saw.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpythreeOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tisiphone Hell-Fire Pillar",
			Description = "Your Attack fires a Hell-Fire Pillar.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RangedBurrowerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dracon",
			Description = "Your Attack fires a Homing Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrusherUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Skull-Crusher",
			Description = "Your Attack Slams Down .",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FreezeShotUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Gorgon",
			Description = "Your Attack fires a Homing Projectile  that turns enemies to Stone.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HitAndRunUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: MegaGorgon",
			Description = "Your Attack fires a {#UpgradeFormat}6 {#Prev}Homing Projectile in a Fan Pattern that turns enemies to Stone.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dire Spreader",
			Description = "Your Attack fires a Projectile Barrage in all directions.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadDartmakerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Darts",
			Description = "Your Attack fires {#UpgradeFormat}5 {#Prev}Consecutive Homing Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadLavamakerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Lava",
			Description = "Your Attack fires {#UpgradeFormat}4 {#Prev}Orbs that leave Lava in their wake.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSummonerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Summon",
			Description = "Your Attack fires {#UpgradeFormat}2 {#Prev}Teeth that Spawn Bloodless.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadWavemakerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Wave",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}Wave Projectile Side by Side.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSlammerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Slam",
			Description = "Your Attack Slams Down in a large area.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeNakedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Naked Shade",
			Description = "Each Location your Attack transforms into one of the Champions of Elysium.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSpearUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Longspear",
			Description = "Your Attack transforms into a Spear Thrust.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSwordUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Brightsword",
			Description = "Your Attack stabs the ground shooting into a Spiked Projectile.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeShieldUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Greatshield",
			Description = "Your Attack slams the ground shooting into a Shockwave.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeBowUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Strongbow",
			Description = "Your Attack shoots a Fast Arrow.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShieldRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Voidstone",
			Description = "Your Attack adds {#UpgradeFormat}2 {#Prev} {$Keywords.Armor}. Up to {#UpgradeFormat}20 {#Prev} per Location.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FlurrySpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Soul Catcher",
			Description = "Your Attack fires a Flurry of Butterflies.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotSuicideCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Flame Wheel",
			Description = "Your Attack Rams forward and Explodes.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Nemean Chariot",
			Description = "Your Attack Rams  into enemies.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SplitShotUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Splitter",
			Description = "Your Attack fires a Projectile which Splits when Dissipitates.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "MinotaurOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Asterius Crescent Strike",
			Description = "Your Attack Slams down sending {#UpgradeFormat}3 {#Prev}Shockwaves.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "TheseusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Theseus Spear Throw",
			Description = "Your Attack Throws a Spear.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "TheseusTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Theseus Spear Spin",
			Description = "Your Attack Spins a Spear around you.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Cultist",
			Description = "Your Attack shoots a Poisoned Dart.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RatThugCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Gigantic Vermin",
			Description = "Your Attack Shakes {#UpgradeFormat}4 {#Prev}Poison Projectiles off.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedForkedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Snakestone",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}Slowly Targeting Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRangedMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dire Satyr Cultist",
			Description = "Your Attack shoots a Barrage of Poisoned Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RatThugMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dire Gigantic Vermin",
			Description = "Your Attack Shakes a Multitude of Poison Projectiles off.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedForkedMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dire Snakestone",
			Description = "Your Attack fires {#UpgradeFormat}12 {#Prev}Slowly Targeting Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesCrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Crawler",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesCrawlerMiniBossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: King Vermin",
			Description = "Your Attack Charges forward and Bites enemies in front.",
		},
		TextOrder)
		)
		
		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hades Cast",
			Description = "Your Attack fires a Homing Skull. Foes embedded with skulls are afflicted with {$Keywords.KirbyBoilingBlood}. Left Alone, the skull will Explode, causing a Shockwave.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hades Urns",
			Description = "Your Attack fires a Summons {#UpgradeFormat}6 {#Prev}Soul Urns that burst upon damage.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharonOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Charon Oar Swipe",
			Description = "Your Attack Swipes to the left.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharonTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Charon Wave",
			Description = "Your Attack fire a Wave Projectile.",
		},
		TextOrder)
		)
	end

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "DummyCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy Ability",
			Description = "Upon hit Your Attacks Copy  the enemy's Attack.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Whisper",
			Description = "Your Attacks Swings around you .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardtwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wet-Whisper",
			Description = "Your Attacks rapidly Swings around you .",
		},
		TextOrder)
	)
	
	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MageCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Casket",
			Description = "Your Attacks fires {#UpgradeFormat}3 {#Prev}projectiles in rapid succession.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrawlerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wastrel",
			Description = "Your Attacks Charge and swipe forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SiegeVineCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Thorn-Weeper",
			Description = "Your Attacks fire a slow homing  projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wailer",
			Description = "Your Attack fires a prolonged short-range wave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamertwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dread-Wailer",
			Description = "Your Attack fires a prolonged wave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatorCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Spindle",
			Description = "Your Attack fires a rotating beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantTailCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Root-Stalker Tail",
			Description = "Your Attack Swipes around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Root-Stalker",
			Description = "Your Attack fires aBarrage of Splinters.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TreantTailtwoCopyTwoDisplayBoon",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Reserve Copy: Brush-Stalker Tail",
		Description = "Your Attack Swipes around you.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreanttwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Brush-Stalker",
			Description = "Your Attack fires aBarrage of Splinters.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmitterCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Shadow-Spiller",
			Description = "Your Attack Slams the ground in front of you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WispCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Lanthorn",
			Description = "Your Attack Explodes  Around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sister of the Dead",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HecateOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hecate Torch-Cone",
			Description = "Your Attack fires Cones of Flame in both directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanMeleeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Lurker",
			Description = "Your Attack Stabs forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishSwarmerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Pinhead",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TurtleCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Shellback",
			Description = "Your Attack fires a Bouncing ball.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hippo",
			Description = "Your Attack fires a Homing Explosive projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sea-Serpent",
			Description = "Your Attack fires a Spit projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Deep Serpent",
			Description = "Your Attack fires a Splitting Spit projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatortwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sop-Spindle",
			Description = "Your Attack fires a long rotating beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "JellyfishCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Jelly-Fish",
			Description = "Your Attack stings lightning around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "OctofishCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hellifish",
			Description = "Your Attack fires a Splash of Ink.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ThiefMineLayerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Pest",
			Description = "Your Attack Throw Proximity Mines.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: King Vermin",
			Description = "Your Attack Charges forward and Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenDrummerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Roxy",
			Description = "Your Attack fires a long cooldown Beat Nova.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenKeytaristCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Jetty",
			Description = "Your Attack becomes a Power Slide.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScyllaOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Scylla Notes",
			Description = "Your Attack fires  Homing Musical Notes.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessNakedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Bloodless",
			Description = "Your Attack Charges forward.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessGrenadierCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Inferno-Bomber",
			Description = "Your Attack lobs a Grenade.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessSelfDestructCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Slam-Dancer",
			Description = "Your Attack Explodes Underneath.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessPitcherCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Burn-Flinger",
			Description = "Your Attack Flingsa Grenade.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessWaveFistCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wave-Maker",
			Description = "Your Attack fires aWave Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Spreader",
			Description = "Your Attack fires {#UpgradeFormat}5 {#Prev}Projectiles in a Fan Formation.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeSmallCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Blight-Shade",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeMediumCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Blood-Shade",
			Description = "Your Attack Rams forwards.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeLargeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Bloat-Shade",
			Description = "Your Attack fires a Spiky Nova around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmittertwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sorrow-Spiller",
			Description = "Your Attack Sweeps in front of you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrokenHeartedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Smacker",
			Description = "Your Attack Slams the ground.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanSwarmerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Canine",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LovesickCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Holeheart",
			Description = "Your Attack Throw Heart Mines.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanthropeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Lycaon",
			Description = "Your Attack Pounces   on enemies and Swipes down with Claws.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MournerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Mourner",
			Description = "Your Attack throws a Flurry of Fists.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LamiaCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Lamia",
			Description = "Your Attack fires a homing beam from the sky .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Lamia_MinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Queen Lamia",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}homing beam from the sky.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "VampireCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Phantom",
			Description = "Your Attacks Claw forward and Steals Life.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "InfestedCerberusOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Cerberus Fire-Breath",
			Description = "Your Attack transforms into a Fire Breath.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwarmerClockworkCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sandskull",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DisembodiedHandCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wringer",
			Description = "Your Attack Grabs enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ClockworkHeavyMeleeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Thug",
			Description = "Your Attack Shoves enemies away.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElementalCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Goldwraith",
			Description = "Your Attack fires a Penetrating Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElemental_MiniBossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Goldwrath",
			Description = "Your Attack fires numerous coins in all directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TimeElementalCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Tempus",
			Description = "Your Attack fires a projectile in a growing Spiral Pattern.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Hoplite",
			Description = "Your Attack throws a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcherCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Vierophant",
			Description = "Your Attack fires a Homing Flaming Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcher_MinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: The Verminancer",
			Description = "Your Attack Tail Swipes while Dashing.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Crawler",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCultistCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Supplicant",
			Description = "Your Attack Throws a Dagger.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Chronos Scythe Throw",
			Description = "Your Attack transforms into a Large Spinning Scythe.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Chronos Time Stasis",
			Description = "Your Attack Stops enemies in a Moment in Time.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZagreusOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Zagreus - Blood Cast",
			Description = "Your Attack fires a Blood Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZagreusTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Zagreus - Spear Spin",
			Description = "Your Attack Spins a Spear around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CarrionCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Bronzebeak",
			Description = "Your Attack Swoops onto enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCrewmanCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Sea-Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieOlympusCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Snow-Shambler",
			Description = "Your Attack Swipes down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieHeavyRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Lubber",
			Description = "Your Attack throws a Burning Barrel.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassinCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Cutthroat",
			Description = "Your Attack becomes a Flurry of Stabs.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassin_MinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Master-Slicer",
			Description = "Your Attack becomes a Flurry of Stabs.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eidolon",
			Description = "Your Attack throws a Projectile  which spawns an Eye-dolon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanEyeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eye-dolon",
			Description = "Your Attack transforms into a Small Explosion.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieSpawnerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Tombstone",
			Description = "Your Attack throws a Projectile  which spawns a Zombie.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SoulPylonCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Soul Pylon",
			Description = "Your Attack Summons {#UpgradeFormat}3 {#Prev} Shades.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BoarCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Erymanthian Boar",
			Description = "Your Attack Stomps the ground creating a Shockwave in all directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Champion",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}homing bolts .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ExplosiveCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Black Sheep",
			Description = "Your Attack creates an Explosion .",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ZombieCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Shamble Sheep",
			Description = "Your Attack Rams forward dazing enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PolyphemusOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Polyphemus Kick",
			Description = "Your Attack Kicks forward creating a Shockwave.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScimiterrorCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Seesword",
			Description = "Your Attack Slashes forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SticklerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Stickler",
			Description = "Your Attack Throws  a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwabCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Anchor",
			Description = "Your Attack fires a Powerful Blast  with a Long Cooldown.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DrunkCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Boozer",
			Description = "Your Attack Slashes before you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyCutterCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Harpy Talon",
			Description = "Your Attack Slices forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterElementalCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Droplet",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MagetwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Blasket",
			Description = "Your Attacks fires {#UpgradeFormat}3 trios {#Prev}of projectiles in rapid succession.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CaptainCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: The Yargonaut",
			Description = "Your Attacks fires {#UpgradeFormat}3 {#Prev}Pistol Shots that Bounce off walls.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharybdisTentacleCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Charybdis Tentacle",
			Description = "Your Attack shoots a Homing Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ErisOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eris Sniper-Shot",
			Description = "Your Attack shoots along range sniper shot.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ErisTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eris Laser",
			Description = "Your Attack fires a Laser Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SentryBotCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Auto-Seeker",
			Description = "Your Attack fire a projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonBeamerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Auto-Watcher",
			Description = "Your Attack fires {#UpgradeFormat}10 {#Prev}Beams.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonEnforcerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Auto-Forcer",
			Description = "Your Attack transforms into Rotating blades.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyDropperCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Harpy Raptor",
			Description = "Your Attack fires a Tornado.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowtwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Raider",
			Description = "Your Attack fires a Crossbow Bolt.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancertwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Goldpike",
			Description = "Your Attack throws a Spear.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrSapperCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Sapper",
			Description = "Your Attack fires a Exploding Rocket.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TalosCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Talos",
			Description = "Your Attack throws a Spinning Shield.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeraclesOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Heracles Spin",
			Description = "Your Attack Spins around you in a Barrage of Blows.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PrometheusOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Prometheus Fire-Pillar",
			Description = "Your Attack fires a Burning Pillar.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SimpleCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Polyp",
			Description = "Your Attack creates a Small Damaging Aura infront.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "StalkerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Stalker",
			Description = "Your Attack fire {#UpgradeFormat}2 Linear Shockwaves.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Stalker_MinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Twins of Typhon",
			Description = "Your Attack fire {#UpgradeFormat}2 {#Prev}Linear Shockwaves.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BruteCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Horror",
			Description = "Your Attack transforms into a Horn Charge.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MatiCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eyesore",
			Description = "Your Attack fire a Homing Splitting Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DragonBurrowerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Land-Dracon",
			Description = "Your Attack fires a Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "EarthElementalCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Headstone",
			Description = "Your Attack fires a Beam.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Brute_MinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Spawn of Typhon",
			Description = "Your Attack Swipes forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonTailCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Tail of Typhon",
			Description = "Your Attack fires a Rotating Drill.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonEyeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Eye of Typhon",
			Description = "Your Attack fires a Lobbed Splitting Projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonEggTwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Egg of Typhon",
			Description = "Each Location your Attack transforms into one of the Spawns of Typhon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonHeadOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Typhon Tongue-Lash",
			Description = "Your Attack fires a Lashing Tongue of Typhon.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonHeadTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Typhon Headbutt",
			Description = "Your Attack Headbutts the ground before you.",
		},
		TextOrder)
	)

	if ZagreusJourney then
		
		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesSwarmerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Numbskull",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightSpawnerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Skullomat",
			Description = "Your Attack Spawns a Numbskull.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "PunchingBagUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Lout",
			Description = "Your Attack Dashes forward.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesLightRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Witch",
			Description = "Your Attack fire a Projectile.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Brimstone",
			Description = "Your Attack fire a Non-Rotating Beam.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyMeleeCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Thug",
			Description = "Your Attack Swipes before you.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesThiefMineLayerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Pest",
			Description = "Your Attack Throw Proximity Mines.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "WretchAssassinMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Wretched Sneak",
			Description = "Your Attack throws{#UpgradeFormat}3 {#Prev}consecutive Projectiles.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedSplitterMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Doomstone",
			Description = "Your Attack fires {#UpgradeFormat}8 {#Prev}Non-Rotating Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Megaera Whip-Fury",
			Description = "Your Attack Whips All-Around.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpytwoOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Alecto Saw-Shot",
			Description = "Your Attack fires a Spinning Saw.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpythreeOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Tisiphone Hell-Fire Pillar",
			Description = "Your Attack fires a Hell-Fire Pillar.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RangedBurrowerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dracon",
			Description = "Your Attack fires a Homing Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrusherUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Skull-Crusher",
			Description = "Your Attack Slams Down .",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FreezeShotUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Gorgon",
			Description = "Your Attack fires a Homing Projectile  that turns enemies to Stone.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HitAndRunUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: MegaGorgon",
			Description = "Your Attack fires a {#UpgradeFormat}6 {#Prev}Homing Projectile in a Fan Pattern that turns enemies to Stone.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dire Spreader",
			Description = "Your Attack fires a Projectile Barrage in all directions.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadDartmakerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hydra Darts",
			Description = "Your Attack fires {#UpgradeFormat}5 {#Prev}Consecutive Homing Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadLavamakerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hydra Lava",
			Description = "Your Attack fires {#UpgradeFormat}4 {#Prev}Orbs that leave Lava in their wake.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSummonerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hydra Summon",
			Description = "Your Attack fires {#UpgradeFormat}2 {#Prev}Teeth that Spawn Bloodless.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadWavemakerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hydra Wave",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}Wave Projectile Side by Side.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSlammerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hydra Slam",
			Description = "Your Attack Slams Down in a large area.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeNakedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Naked Shade",
			Description = "Each Location your Attack transforms into one of the Champions of Elysium.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSpearUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Longspear",
			Description = "Your Attack transforms into a Spear Thrust.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSwordUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Brightsword",
			Description = "Your Attack stabs the ground shooting into a Spiked Projectile.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeShieldUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Greatshield",
			Description = "Your Attack slams the ground shooting into a Shockwave.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeBowUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Strongbow",
			Description = "Your Attack shoots a Fast Arrow.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShieldRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Voidstone",
			Description = "Your Attack adds {#UpgradeFormat}2 {#Prev} {$Keywords.Armor}. Up to {#UpgradeFormat}20 {#Prev} per Location.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FlurrySpawnerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Soul Catcher",
			Description = "Your Attack fires a Flurry of Butterflies.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotSuicideCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Flame Wheel",
			Description = "Your Attack Rams forward and Explodes.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Nemean Chariot",
			Description = "Your Attack Rams  into enemies.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SplitShotUnitCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Splitter",
			Description = "Your Attack fires a Projectile which Splits when Dissipitates.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "MinotaurOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Asterius Crescent Strike",
			Description = "Your Attack Slams down sending {#UpgradeFormat}3 {#Prev}Shockwaves.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "TheseusOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Theseus Spear Throw",
			Description = "Your Attack Throws a Spear.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "TheseusTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Theseus Spear Spin",
			Description = "Your Attack Spins a Spear around you.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRangedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Satyr Cultist",
			Description = "Your Attack shoots a Poisoned Dart.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RatThugCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Gigantic Vermin",
			Description = "Your Attack Shakes {#UpgradeFormat}4 {#Prev}Poison Projectiles off.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedForkedCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Snakestone",
			Description = "Your Attack fires {#UpgradeFormat}3 {#Prev}Slowly Targeting Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRangedMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dire Satyr Cultist",
			Description = "Your Attack shoots a Barrage of Poisoned Darts.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RatThugMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dire Gigantic Vermin",
			Description = "Your Attack Shakes a Multitude of Poison Projectiles off.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedForkedMinibossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Dire Snakestone",
			Description = "Your Attack fires {#UpgradeFormat}12 {#Prev}Slowly Targeting Beams.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesCrawlerCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Crawler",
			Description = "Your Attack Bites enemies in front.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesCrawlerMiniBossCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: King Vermin",
			Description = "Your Attack Charges forward and Bites enemies in front.",
		},
		TextOrder)
		)
		
		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hades Cast",
			Description = "Your Attack fires a Homing Skull. Foes embedded with skulls are afflicted with {$Keywords.KirbyBoilingBlood}. Left Alone, the skull will Explode, causing a Shockwave.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Hades Urns",
			Description = "Your Attack fires a Summons {#UpgradeFormat}6 {#Prev}Soul Urns that burst upon damage.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharonOneCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Charon Oar Swipe",
			Description = "Your Attack Swipes to the left.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharonTwoCopyTwoDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Reserve Copy: Charon Wave",
			Description = "Your Attack fire a Wave Projectile.",
		},
		TextOrder)
		)
	end

	--Quests
	table.insert(data.Texts, sjson.to_object(
	{
      Id = "Quest_Tools_Trade_Clear",
      DisplayName = "Tools for the Job",
      Description = "The daughter of the god of the dead shall prevail against either of her ultimate adversaries using the {#Emph}Tools {#Prev}at her {#Emph}Trade{#Prev}."
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "Quest_Tools_Trade_HammersTaken",
      DisplayName = "Hammers of the Trade",
      Description = "The daughter of the god of the dead shall apply various {#Emph}Daedalus {#Prev}enchantments to the {#Emph}Tools {#Prev}of her {#Emph}Trade{#Prev}."
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "Quest_Kirby_below",
      DisplayName = "Seen All Below",
      Description = "The dauther of the god of the dead shall some night {#Emph}Imitate {#Prev}the {#Emph}Attacks {#Prev}of her foes down in the Underworld."
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "Quest_Kirby_above",
      DisplayName = "Seen All Above",
      Description = "The daughter of the god of the dead shall some night {#Emph}Imitate {#Prev}the {#Emph}Attacks {#Prev}of all {#Emph}Surface Dwellers{#Prev}."
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "Quest_Kirby_behind",
      DisplayName = "Seen All Behind",
      Description = "The daughter of the god of the dead shall dream of {#Emph}Imitating {#Prev} the {#Emph}Abilities {#Prev}of all {#Emph}Subjects in her Father's Domain{#Prev}."
	},
	TextOrder)
	)

    return data
end)