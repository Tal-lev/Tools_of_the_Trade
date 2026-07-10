---@module "NikkelM-Cosmetics_API"
CosmeticsAPI = rom.mods["NikkelM-Cosmetics_API"]

CosmeticsAPI.RegisterCrossroadsPackages({ "JarlUlsfark-Tools_of_the_Trade_Cosmetics" })

local mainHubAreaCosmetics = {
    {
		Id = _PLUGIN.guid .. "." .. "Cosmetic_Cauldron_Kirby",
		Name = {
			en = "Cauldron, Copy Master",
		},
		Description = {
			en =
			"{$Keywords.CosmeticSwap}: Forged from a comet flung from a Far away planet.",
		},
		FlavorText = {
			en =
			"Crafted by the watchful eye of a giant called Nintendo",
		},
		CosmeticsGroup = "Cosmetic_Cauldron01",
		InsertAfterCosmetic = "Cosmetic_Cauldron01b",
		ShopCategory = "CosmeticsShop_Main",
		SetAnimationIds = { 558175 },
		IconPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\CauldronKirbyIcon",
		CosmeticAnimationPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\CauldronKirby",
		AnimationScale = 2,
		AnimationOffsetY = -25,
		IsCauldron = true,
		CauldronLidAnimationPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\CauldronKirbyLid",
		-- For the bubbling water animation
		AnimationInheritFrom = "CriticalItemWorldObject01",
		GameStateRequirements = {
			PathTrue = { "GameState", "WeaponsUnlocked", "TabletofPeaceKirbyMel5" }
		},
		AlwaysRevealImmediately = true,
		Cost = {
			CosmeticsPoints = 1,
		},
		RevealReactionVoiceLines = {
			{
				PreLineWait = 0.35,
				ObjectType = "NPC_Dora_01",
				{
					Cue = "/VO/Dora_0442",
					Text = "Bet you can cook up some {#Emph}real {#Prev}nasty curses in this baby.",
					PreLineFunctionName = "GenericPresentation",
					PreLineFunctionArgs = game.PresetAudioArgs.DoraNormalAppearArgs
				},
			},
			{ GlobalVoiceLines = "PositiveReactionVoiceLines" },
		},
	},
}

for _, cosmeticData in ipairs(mainHubAreaCosmetics) do
	if cosmeticData.GameStateRequirements == nil then
		cosmeticData.GameStateRequirements = {}
	end

	CosmeticsAPI.RegisterCosmetic(cosmeticData)
end

-- #YM Aspect Pack
CosmeticsAPI.RegisterCardBackPack({
	Id = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotTAspects",
	Name = {
		en = "Arcana, Gathering Tools",
	},
	Description = {
		en =
		"{$Keywords.CosmeticDeck}: Set of {#UpgradeFormatDark}4 {#Prev}alternate themes, featuring the Gathering Tools.",
	},
	FlavorText = {
		en =
		"Humble Tools in the right hands can topple titans and fell mountains.",
	},
	IconPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackSet",
	Cost = {
		CosmeticsPoints = 2500,
		--ModsNikkelMHadesBiomes_PlantAsphodel = 2,
		--ModsNikkelMHadesBiomes_CropElysium = 2,
		--ModsNikkelMHadesBiomes_OreStyx = 4,

	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Cosmetic_CardDeck01" },
		},
		{
				Path = { "GameState", "WeaponsUnlocked", },
				HasAll = { 
                    "WeaponAxe", "ShovelRaiseDeadNecroMel", 
                    "WeaponLob", "TabletofPeaceKirbyMel",
                },
        },
	},
	InsertAfterCosmetic = "Cosmetic_CardDeck02",
	PreRevealVoiceLines = {
		Queue = "Interrupt",
		{
			PreLineWait = 0.35,
			UsePlayerSource = true,
			{ Cue = "/VO/Melinoe_5281", Text = "Time to retrace my steps..." },
		},
		{ GlobalVoiceLines = "DoraCosmeticReactionVoiceLines" },
	},
})

CosmeticsAPI.RegisterCardBack({
	Id = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotT_Tablet",
	PackId = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotTAspects",
	DeckArtPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackTabletNotSel",
	DeckArtMouseoverPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackTabletYesSel",
	CardBackPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackTablet",
})

CosmeticsAPI.RegisterCardBack({
	Id = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotT_Shovel",
	PackId = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotTAspects",
	DeckArtPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackShovelNotSel",
	DeckArtMouseoverPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackShovelYesSel",
	CardBackPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackShovel",
})

CosmeticsAPI.RegisterCardBack({
	Id = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotT_Copies",
	PackId = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotTAspects",
	DeckArtPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackCopiesNotSel",
	DeckArtMouseoverPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackCopiesYesSel",
	CardBackPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackCopies",
})


CosmeticsAPI.RegisterCardBack({
	Id = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotT_Zombie",
	PackId = _PLUGIN.guid .. "." .. "Cosmetic_Arcana_TotTAspects",
	DeckArtPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackZombieNotSel",
	DeckArtMouseoverPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackZombieYesSel",
	CardBackPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\ArcanaBackZombie",
})