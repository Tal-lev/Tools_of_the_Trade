--Inserts text
	local TextOrder = {
    "Id",
    "InheritFrom",
    "DisplayName",
    "Description",
	"OverwriteLocalization",
	}

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
			DisplayName = "The Tablet of Peace (Experimental!)",
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
		Description = "Your {$Keywords.Attack} have {#UpgradeFormat}double {#Prev}{$Keywords.Ammo}.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TabletKirbyMegaAmmoTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Explosive Reflection",
		Description = "Your {$Keywords.Attack} deals {#UpgradeFormat}+100% {#Prev}damage but always {#UpgradeFormat}copies the last enemy hit{#Prev}.",
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
			DisplayName = "Copy Ability: Whisper",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GuardtwoCopyDisplayBoon",
			Description = "Your Attacks rapidly {#UpgradeFormat}Swings around you {#Prev}.",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Wet-Whisper",
		},
		TextOrder)
	)
	
	table.insert(data.Texts, sjson.to_object(
		{
			Id = "MageCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Casket",
			Description = "Your Attacks fires {#UpgradeFormat}3 {#Prev}projectiles in rapid succession.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Wastrel",
			Description = "Your Attacks {#UpgradeFormat}Charge and swipe forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SiegeVineCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Thorn-Weeper",
			Description = "Your Attacks fire a {#UpgradeFormat}slow homing {#Prev} projectile.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Wailer",
			Description = "Your Attack fires a {#UpgradeFormat}prolonged short-range wave{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScreamertwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Dread-Wailer",
			Description = "Your Attack fires a {#UpgradeFormat}prolonged wave{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatorCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Spindle",
			Description = "Your Attack fires a {#UpgradeFormat}rotating beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TreantTailCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Root-Stalker Tail",
			Description = "Your Attack {#UpgradeFormat}Swipes around you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "TreantTailtwoCopyDisplayBoon",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Copy Ability: Brush-Stalker Tail",
		Description = "Your Attack {#UpgradeFormat}Swipes around you{#Prev}.",
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmitterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Shadow-Spiller",
			Description = "Your Attack {#UpgradeFormat}Slams the ground in front of you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LightRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sister of the Dead",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "HecateOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Hecate Torch-Cone",
			Description = "Your Attack fires {#UpgradeFormat}Cones of Flame{#Prev} in both directions.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Lurker",
			Description = "Your Attack {#UpgradeFormat}Stabs forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Pinhead",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TurtleCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Shellback",
			Description = "Your Attack fires a {#UpgradeFormat}Bouncing ball{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FishmanRangedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Hippo",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Explosive projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sea-Serpent",
			Description = "Your Attack fires a {#UpgradeFormat}Spit projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "WaterUnitCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Deep Serpent",
			Description = "Your Attack fires a {#UpgradeFormat}Splitting Spit projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "RadiatortwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sop-Spindle",
			Description = "Your Attack fires a {#UpgradeFormat}long rotating beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "JellyfishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Jelly-Fish",
			Description = "Your Attack {#UpgradeFormat}stings lightning around you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "OctofishCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Hellifish",
			Description = "Your Attack fires a {#UpgradeFormat}Splash of Ink{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerMinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: King Vermin",
			Description = "Your Attack {#UpgradeFormat}Charges {#Prev}forward and {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenDrummerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Roxy",
			Description = "Your Attack fires a long cooldown {#UpgradeFormat}Beat Nova{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SirenKeytaristCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Jetty",
			Description = "Your Attack becomes a {#UpgradeFormat}Power Slide{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ScyllaOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Scylla Notes",
			Description = "Your Attack fires  {#UpgradeFormat}Homing Musical Notes{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeSmallCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Blight-Shade",
			Description = "Your Attack fires a {#UpgradeFormat}Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeMediumCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Blood-Shade",
			Description = "Your Attack {#UpgradeFormat}Rams forwards{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CorruptedShadeLargeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Bloat-Shade",
			Description = "Your Attack fires a {#UpgradeFormat}Spiky Nova{#Prev} around you.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "FogEmitterCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sorrow-Spiller",
			Description = "Your Attack {#UpgradeFormat}Sweeps in front of you{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "BrokenHeartedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Smacker",
			Description = "Your Attack {#UpgradeFormat}Slams {#Prev}the ground.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LycanSwarmerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Canine",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "LamiaCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Lamia",
			Description = "Your Attack fires a {#UpgradeFormat}homing beam from the sky {#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "Lamia_MinibossCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Queen Lamia",
			Description = "Your Attack fires {#UpgradeFormat}3 homing beam from the sky {#Prev}.",
		},
		TextOrder)
	)

		table.insert(data.Texts, sjson.to_object(
		{
			Id = "VampireCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Phantom",
			Description = "Your Attacks {#UpgradeFormat}Claw forward {#Prev}and {#UpgradeFormat}Steals Life{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "InfestedCerberusOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Infernal Cerberus - Fire-Breath",
			Description = "Your Attack transforms into a {#UpgradeFormat}Fire Breath{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SwarmerClockworkCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sandskull",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ClockworkHeavyMeleeCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Wretched Thug",
			Description = "Your Attack {#UpgradeFormat}Shoves {#Prev}enemies away.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Goldwraith",
			Description = "Your Attack fires a {#UpgradeFormat}Penetrating Beam{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "GoldElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Goldwrath",
			Description = "Your Attack fires {#UpgradeFormat}numerous coins in all directions{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "TimeElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Tempus",
			Description = "Your Attack fires a projectile in a growing {#UpgradeFormat}Spiral Pattern{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrLancerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Satyr Hoplite",
			Description = "Your Attack throws a {#UpgradeFormat}Spear{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrRatCatcherCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Satyr Vierophant",
			Description = "Your Attack fires a {#UpgradeFormat}Homing Flaming Projectile{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "CrawlerCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Crawler",
			Description = "Your Attack {#UpgradeFormat}Bites {#Prev}enemies in front.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "SatyrCultistCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Satyr Supplicant",
			Description = "Your Attack {#UpgradeFormat}Throws a Dagger{#Prev}.",
		},
		TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosOneCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Chronos - Scythe Throw",
			Description = "Your Attack transforms into a {#UpgradeFormat}Large Spinning Scythe{#Prev}.",
		},
		TextOrder)
	)

    return data
end)