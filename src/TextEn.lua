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
			Id = "RadiatortwoCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Sop-Spindle",
			Description = "Your Attack fires a {#UpgradeFormat}long rotating beam{#Prev}.",
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
			Id = "BrokenHeartedCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Smacker",
			Description = "Your Attack {#UpgradeFormat}Slams {#Prev}the ground.",
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
			Id = "GoldElementalCopyDisplayBoon",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Copy Ability: Goldwraith",
			Description = "Your Attack fires a {#UpgradeFormat}Penetrating Beam{#Prev}.",
		},
		TextOrder)
	)

    return data
end)