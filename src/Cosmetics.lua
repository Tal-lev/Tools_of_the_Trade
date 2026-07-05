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