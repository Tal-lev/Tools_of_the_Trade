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
		Description = "Your copied {$Keywords.Attack} {#UpgradeFormat}never expires{#Prev}. {$Keywords.AttackEX} releases the copy.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyDoubleAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Extended Reflection",
		Description = "Your {$Keywords.Attack} have {#UpgradeFormat}double {#Prev}{$Keywords.AmmoSupply}.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyMegaAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Fractured Reflection",
		Description = "Your {$Keywords.Attack} deals {#UpgradeFormat}+50% {#Prev}damage but always {#UpgradeFormat}copies the last enemy hit{#Prev}.",
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
			Description = "Upon hit Your Attacks {#UpgradeFormat}Copy {#Prev} the enemy's Attack.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardCopyDisplayBoon",
			Description = "Your Attacks {#UpgradeFormat}Swings around you {#Prev}.",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Whisper",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardtwoCopyDisplayBoon",
			Description = "Your Attacks rapidly {#UpgradeFormat}Swings around you {#Prev}.",
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
			Description = "Your Attacks {#UpgradeFormat}Charge and swipe forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SiegeVineCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Thorn-Weeper",
			Description = "Your Attacks fire a {#UpgradeFormat}slow homing {#Prev} projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wailer",
			Description = "Your Attack fires a {#UpgradeFormat}prolonged short-range wave{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dread-Wailer",
			Description = "Your Attack fires a {#UpgradeFormat}prolonged wave{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatorCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spindle",
			Description = "Your Attack fires a {#UpgradeFormat}rotating beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantTailCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Root-Stalker Tail",
			Description = "Your Attack {#UpgradeFormat}Swipes around you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TreantTailtwoCopyDisplayBoon",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Copy: Brush-Stalker Tail",
		Description = "Your Attack {#UpgradeFormat}Swipes around you{#Prev}.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmitterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shadow-Spiller",
			Description = "Your Attack {#UpgradeFormat}Slams the ground in front of you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WispCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lanthorn",
			Description = "Your Attack {#UpgradeFormat}Explodes {#Prev} Around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sister of the Dead",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HecateOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hecate Torch-Cone",
			Description = "Your Attack fires {#UpgradeFormat}Cones of Flame{#Prev} in both directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lurker",
			Description = "Your Attack {#UpgradeFormat}Stabs forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Pinhead",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TurtleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shellback",
			Description = "Your Attack fires a {#UpgradeFormat}Bouncing ball{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hippo",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Explosive projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sea-Serpent",
			Description = "Your Attack fires a {#UpgradeFormat}Spit projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Deep Serpent",
			Description = "Your Attack fires a {#UpgradeFormat}Splitting Spit projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatortwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sop-Spindle",
			Description = "Your Attack fires a {#UpgradeFormat}long rotating beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "JellyfishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Jelly-Fish",
			Description = "Your Attack {#UpgradeFormat}stings lightning around you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "OctofishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hellifish",
			Description = "Your Attack fires a {#UpgradeFormat}Splash of Ink{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: King Vermin",
			Description = "Your Attack {#UpgradeFormat}Charges {#Prev}forward and {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenDrummerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Roxy",
			Description = "Your Attack fires a long cooldown {#UpgradeFormat}Beat Nova{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenKeytaristCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Jetty",
			Description = "Your Attack becomes a {#UpgradeFormat}Power Slide{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScyllaOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Scylla Notes",
			Description = "Your Attack fires  {#UpgradeFormat}Homing Musical Notes{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessNakedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bloodless",
			Description = "Your Attack {#UpgradeFormat}Charges {#Prev}forward.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessGrenadierCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Inferno-Bomber",
			Description = "Your Attack lobs a {#UpgradeFormat}Grenade{#Prev}.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessSelfDestructCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Slam-Dancer",
			Description = "Your Attack {#UpgradeFormat}Explodes Underneath{#Prev}.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessPitcherCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Burn-Flinger",
			Description = "Your Attack {#UpgradeFormat}Flings{#Prev}a {#UpgradeFormat}Grenade{#Prev}.",
		},
		TextOrder)
		)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BloodlessWaveFistCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wave-Maker",
			Description = "Your Attack fires a{#UpgradeFormat}Wave Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spreader",
			Description = "Your Attack fires {#UpgradeFormat}5 Projectiles{#Prev} in a {#UpgradeFormat}Fan Formation{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeSmallCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Blight-Shade",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeMediumCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Blood-Shade",
			Description = "Your Attack {#UpgradeFormat}Rams forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeLargeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bloat-Shade",
			Description = "Your Attack fires a {#UpgradeFormat}Spiky Nova{#Prev} around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmittertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sorrow-Spiller",
			Description = "Your Attack {#UpgradeFormat}Sweeps in front of you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrokenHeartedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Smacker",
			Description = "Your Attack {#UpgradeFormat}Slams {#Prev}the ground.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Canine",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanthropeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lycaon",
			Description = "Your Attack {#UpgradeFormat}Pounces  {#Prev} on enemies and Swipes down with {#UpgradeFormat}Claws{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LamiaCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lamia",
			Description = "Your Attack fires a {#UpgradeFormat}homing beam from the sky {#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Lamia_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Queen Lamia",
			Description = "Your Attack fires {#UpgradeFormat}3 homing beam from the sky {#Prev}.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "VampireCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Phantom",
			Description = "Your Attacks {#UpgradeFormat}Claw forward {#Prev}and {#UpgradeFormat}Steals Life{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "InfestedCerberusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Cerberus Fire-Breath",
			Description = "Your Attack transforms into a {#UpgradeFormat}Fire Breath{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwarmerClockworkCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sandskull",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ClockworkHeavyMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Thug",
			Description = "Your Attack {#UpgradeFormat}Shoves {#Prev}enemies away.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Goldwraith",
			Description = "Your Attack fires a {#UpgradeFormat}Penetrating Beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElemental_MiniBossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Goldwrath",
			Description = "Your Attack fires {#UpgradeFormat}numerous coins in all directions{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TimeElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tempus",
			Description = "Your Attack fires a projectile in a growing {#UpgradeFormat}Spiral Pattern{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Hoplite",
			Description = "Your Attack throws a {#UpgradeFormat}Spear{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcherCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Vierophant",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Flaming Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcher_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: The Verminancer",
			Description = "Your Attack {#UpgradeFormat}Tail Swipes while Dashing{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Crawler",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCultistCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Supplicant",
			Description = "Your Attack {#UpgradeFormat}Throws a Dagger{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Chronos Scythe Throw",
			Description = "Your Attack transforms into a {#UpgradeFormat}Large Spinning Scythe{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZagreusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Zagreus - Blood Cast",
			Description = "Your Attack fires a {#UpgradeFormat}Blood Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CarrionCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Bronzebeak",
			Description = "Your Attack {#UpgradeFormat}Swoops {#Prev}onto enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shambler",
			Description = "Your Attack {#UpgradeFormat}Swipes{#Prev} down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieCrewmanCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Sea-Shambler",
			Description = "Your Attack {#UpgradeFormat}Swipes{#Prev} down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieOlympusCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Snow-Shambler",
			Description = "Your Attack {#UpgradeFormat}Swipes{#Prev} down.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieHeavyRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Lubber",
			Description = "Your Attack throws a {#UpgradeFormat}Burning Barrel{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassinCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Cutthroat",
			Description = "Your Attack becomes a {#UpgradeFormat}Flurry of Stabs{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieAssassin_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Master-Slicer",
			Description = "Your Attack becomes a {#UpgradeFormat}Flurry of Stabs{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eidolon",
			Description = "Your Attack throws a {#UpgradeFormat}Projectile {#Prev} which {#UpgradeFormat}spawns an Eye-dolon{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MudmanEyeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eye-dolon",
			Description = "Your Attack transforms into a {#UpgradeFormat}Small Explosion{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ZombieSpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tombstone",
			Description = "Your Attack throws a {#UpgradeFormat}Projectile {#Prev} which {#UpgradeFormat}spawns a Zombie{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BoarCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Erymanthian Boar",
			Description = "Your Attack {#UpgradeFormat}Stomps {#Prev} the ground creating a {#UpgradeFormat}Shockwave {#Prev}in all directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Champion",
			Description = "Your Attack fires {#UpgradeFormat}3 homing bolts {#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ExplosiveCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Black Sheep",
			Description = "Your Attack creates an{#UpgradeFormat}Explosion {#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Sheep_ZombieCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Shamble Sheep",
			Description = "Your Attack {#UpgradeFormat}Rams {#Prev}forward dazing enemies.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PolyphemusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Polyphemus Kick",
			Description = "Your Attack {#UpgradeFormat}Kicks {#Prev}forward creating a {#UpgradeFormat}Shockwave{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScimiterrorCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Seesword",
			Description = "Your Attack {#UpgradeFormat}Slashes {#Prev}forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SticklerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Stickler",
			Description = "Your Attack {#UpgradeFormat}Throws {#Prev} a {#UpgradeFormat}Spear{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwabCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Anchor",
			Description = "Your Attack fires a {#UpgradeFormat}Powerful Blast {#Prev} with a {#UpgradeFormat}Long Cooldown{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DrunkCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Boozer",
			Description = "Your Attack {#UpgradeFormat}Slashes {#Prev}before you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyCutterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Harpy Talon",
			Description = "Your Attack {#UpgradeFormat}Slices {#Prev}forward{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Droplet",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
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
			Description = "Your Attacks fires {#UpgradeFormat}3 Pistol Shots {#Prev}that {#UpgradeFormat}Bounce {#Prev}off walls.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CharybdisTentacleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Charybdis Tentacle",
			Description = "Your Attack shoots a {#UpgradeFormat}Homing Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ErisOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eris Sniper-Shot",
			Description = "Your Attack shoots a{#UpgradeFormat}long range sniper shot{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SentryBotCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Seeker",
			Description = "Your Attack fire a {#UpgradeFormat}projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonBeamerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Watcher",
			Description = "Your Attack fires {#UpgradeFormat}10 Beams{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "AutomatonEnforcerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Auto-Forcer",
			Description = "Your Attack transforms into {#UpgradeFormat}Rotating blades{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyDropperCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Harpy Raptor",
			Description = "Your Attack fires a {#UpgradeFormat}Tornado{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCrossbowtwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Raider",
			Description = "Your Attack fires a {#UpgradeFormat}Crossbow Bolt{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Goldpike",
			Description = "Your Attack throws a {#UpgradeFormat}Spear{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrSapperCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Satyr Sapper",
			Description = "Your Attack fires a {#UpgradeFormat}Exploding Rocket{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrSapperCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Talos",
			Description = "Your Attack throws a {#UpgradeFormat}Spinning Shield{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeraclesOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Heracles Spin",
			Description = "Your Attack {#UpgradeFormat}Spins {#Prev}around you in a {#UpgradeFormat}Barrage of Blows{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "PrometheusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Prometheus Fire-Pillar",
			Description = "Your Attack fires a {#UpgradeFormat}Burning Pillar{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SimpleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Polyp",
			Description = "Your Attack creates a {#UpgradeFormat}Small Damaging Aura{#Prev} infront.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "StalkerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Stalker",
			Description = "Your Attack fire {#UpgradeFormat}2 Linear Shockwaves{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Stalker_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Twins of Typhon",
			Description = "Your Attack fire {#UpgradeFormat}2 Linear Shockwaves{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "StalkerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Horror",
			Description = "Your Attack transforms into a {#UpgradeFormat}Horn Charge{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MatiCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eyesore",
			Description = "Your Attack fire a {#UpgradeFormat}Homing Splitting Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "DragonBurrowerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Land-Dracon",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "EarthElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Headstone",
			Description = "Your Attack fires a {#UpgradeFormat}Beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Brute_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Spawn of Typhon",
			Description = "Your Attack {#UpgradeFormat}Swipes{#Prev} forward.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonTailCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tail of Typhon",
			Description = "Your Attack fires a {#UpgradeFormat}Rotating Drill{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonEyeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Eye of Typhon",
			Description = "Your Attack fires a {#UpgradeFormat}Lobbed Splitting Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TyphonHeadCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Typhon Tongue-Lash",
			Description = "Your Attack fires a {#UpgradeFormat}Lashing Tongue of Typhon{#Prev}.",
		},
		TextOrder)
	)

	if ZagreusJourney then
		
		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Numbskull",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightSpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Skullomat",
			Description = "Your Attack {#UpgradeFormat}Spawns {#Prev}a {#UpgradeFormat}Numbskull{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "PunchingBagUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Lout",
			Description = "Your Attack {#UpgradeFormat}Dashes {#Prev}forward.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HadesLightRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Witch",
			Description = "Your Attack fire a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Brimstone",
			Description = "Your Attack fire a {#UpgradeFormat}Non-Rotating Beam{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Thug",
			Description = "Your Attack {#UpgradeFormat}Swipes{#Prev} before you.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "WretchAssassinMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Wretched Sneak",
			Description = "Your Attack throws{#UpgradeFormat}3 consecutive Projectiles{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HeavyRangedSplitterMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Doomstone",
			Description = "Your Attack fires {#UpgradeFormat}8 Non-Rotating Beams{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpyOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Megaera Whip-Fury",
			Description = "Your Attack {#UpgradeFormat}Whips All-Around{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpytwoOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Alecto Saw-Shot",
			Description = "Your Attack fires a{#UpgradeFormat}Spinning Saw{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HarpythreeOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Tisiphone Hell-Fire Pillar",
			Description = "Your Attack fires a {#UpgradeFormat}Hell-Fire Pillar{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "RangedBurrowerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dracon",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Darts{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrusherUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Skull-Crusher",
			Description = "Your Attack {#UpgradeFormat}Slams Down {#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FreezeShotUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Gorgon",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Projectile {#Prev} that turns enemies to {#UpgradeFormat}Stone{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HitAndRunUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: MegaGorgon",
			Description = "Your Attack fires a {#UpgradeFormat}6 Homing Projectile {#Prev}in a #{UpgradeFormat}Fan Pattern {#Prev} that turns enemies to {#UpgradeFormat}Stone{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "SpreadShotUnitMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Dire Spreader",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile Barrage {#Prev}in all directions.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadDartmakerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Darts",
			Description = "Your Attack fires {#UpgradeFormat}5 Consecutive Homing Darts{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadLavamakerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Lava",
			Description = "Your Attack fires {#UpgradeFormat}4 Orbs {#Prev}that leave {#UpgradeFormat}Lava {#Prev}in their wake.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSummonerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Summon",
			Description = "Your Attack fires {#UpgradeFormat}2 Teeth {#Prev}that {#UpgradeFormat}Spawn Bloodless{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSummonerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Wave",
			Description = "Your Attack fires {#UpgradeFormat}3 Wave Projectile Side by Side{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "HydraHeadSlammerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Hydra Slam",
			Description = "Your Attack {#UpgradeFormat}Slams Down {#Prev}in a large area.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeNakedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Naked Shade",
			Description = "Each {#UpgradeFormat}Location {#Prev}your Attack transforms into one of the {#UpgradeFormat}Champions of Elysium{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSpearUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Longspear",
			Description = "Your Attack transforms into a {#UpgradeFormat}Spear Thrust{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeSwordUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Brightsword",
			Description = "Your Attack stabs the ground shooting into a {#UpgradeFormat}Spiked Projectile{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeShieldUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Greatshield",
			Description = "Your Attack slams the ground shooting into a {#UpgradeFormat}Shockwave{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ShadeBowUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Strongbow",
			Description = "Your Attack shoots a {#UpgradeFormat}Fast Arrow{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "FlurrySpawnerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Soul Catcher",
			Description = "Your Attack fires a {#UpgradeFormat}Flurry of Butterflies{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotSuicideCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Flame Wheel",
			Description = "Your Attack {#UpgradeFormat}Rams {#Prev}forward and {#UpgradeFormat}Explodes{#Prev}.",
		},
		TextOrder)
		)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChariotCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy: Nemean Chariot",
			Description = "Your Attack {#UpgradeFormat}Rams {#Prev} into enemies.",
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
      Id = "Quest_Kirby_above",
      DisplayName = "Seen All Behind",
      Description = "The daughter of the god of the dead shall dream witnessing the {#Emph}Abilities {#Prev}of all {#Emph}Subjects in her Father's Domain{#Prev}."
	},
	TextOrder)
	)

    return data
end)