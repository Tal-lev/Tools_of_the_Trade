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

    return data
end)