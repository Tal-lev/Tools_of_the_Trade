local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']

local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Lob_VFX.sjson')
sjson.hook(file, function(data)

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Zeus",
        InheritFrom = "GuardMeleeAoE",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Hera",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Poseidon",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Demeter",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Apollo",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Aphrodite",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Hephaestus",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Hestia",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Ares",
        InheritFrom = "GuardMeleeAoE_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Zeus",
        InheritFrom = "BrawlerSwipeBase",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Hera",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Poseidon",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Demeter",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Apollo",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Aphrodite",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Hephaestus",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Hestia",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrawlerSwipeBase_Ares",
        InheritFrom = "BrawlerSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "MageProjectile_Zeus",
        InheritFrom = "MageProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Hera",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Poseidon",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Demeter",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Apollo",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Aphrodite",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Hephaestus",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Hestia",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectile_Ares",
        InheritFrom = "MageProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

        table.insert(data.Animations,
        {
        Name = "SiegeVineAttack_Zeus",
        InheritFrom = "SiegeVineAttack",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Hera",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Poseidon",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Demeter",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Apollo",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Aphrodite",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Hephaestus",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Hestia",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SiegeVineAttack_Ares",
        InheritFrom = "SiegeVineAttack_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "ScreamerConeFxFade_Zeus",
        InheritFrom = "ScreamerConeFxFade",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Hera",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 0.0,
    StartGreen = 1.0,
    StartBlue = 0.1,
    EndRed = 0.1,
    EndGreen = 0.3,
    EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Poseidon",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 0.1,
    StartGreen = 1.0,
    StartBlue = 0.8,
    EndRed = 0,
    EndGreen = 0.6,
    EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Demeter",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 0.25,
    StartGreen = 0.35,
    StartBlue = 0.5,
    EndRed = 0.35,
    EndGreen = 0.25,
    EndBlue = 0.4999,
    })


    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Apollo",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 1.0,
    StartGreen = 0.9,
    StartBlue = 0.7,
    EndRed = 0.999,
    EndGreen = 0.85,
    EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Aphrodite",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 1.0,
    StartGreen = 0.6,
    StartBlue = 0.8,
    EndRed = 0.99,
    EndGreen = 0.05,
    EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Hephaestus",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 0.51,
    StartGreen = 0.82,
    StartBlue = 1.00,
    EndRed = 1.00,
    EndGreen = 0,
    EndBlue = 0,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Hestia",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 1.0,
    StartGreen = 0.3,
    StartBlue = 0.02,
    EndRed = 0.999,
    EndGreen = 0.15,
    EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxFade_Ares",
    InheritFrom = "ScreamerConeFxFade_Zeus",
    StartRed = 1.0,
    StartGreen = 0.04,
    StartBlue = 0.001,
    EndRed = 0.999,
    EndGreen = 0.0,
    EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "ScreamerConeFx_Zeus",
        InheritFrom = "ScreamerConeFx",
        ChainTo = "ScreamerConeFxFade_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Hera",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Poseidon",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Demeter",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Apollo",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Aphrodite",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Hephaestus",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Hestia",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFx_Ares",
        InheritFrom = "ScreamerConeFx_Zeus",
        ChainTo = "ScreamerConeFxFade_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "RadiatorBeam_Zeus",
    InheritFrom = "RadiatorBeam",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Hera",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Poseidon",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Demeter",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Apollo",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Aphrodite",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Hephaestus",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Hestia",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeam_Ares",
        InheritFrom = "RadiatorBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "TreantTailSwipeFx_Zeus",
    InheritFrom = "TreantTailSwipeFx",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Hera",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Poseidon",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Demeter",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Apollo",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Aphrodite",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Hephaestus",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Hestia",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantTailSwipeFx_Ares",
        InheritFrom = "TreantTailSwipeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Zeus",
        InheritFrom = "FogEmitterSlamNova",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Hera",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Poseidon",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Demeter",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Apollo",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Aphrodite",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Hephaestus",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Hestia",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSlamNova_Ares",
        InheritFrom = "FogEmitterSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Zeus",
        InheritFrom = "EnemyProjectileDissipate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Hera",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Poseidon",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Demeter",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Apollo",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Aphrodite",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Hephaestus",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Hestia",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileDissipate_Ares",
        InheritFrom = "EnemyProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Zeus",
        InheritFrom = "MageProjectileExplosion_LightRanged",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Hera",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Poseidon",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Demeter",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Apollo",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Aphrodite",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Hephaestus",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Hestia",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MageProjectileExplosion_LightRanged_Ares",
        InheritFrom = "MageProjectileExplosion_LightRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Zeus",
        InheritFrom = "EnemyProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Hera",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Poseidon",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Demeter",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Apollo",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Aphrodite",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Hephaestus",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Hestia",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectile_Ares",
        InheritFrom = "EnemyProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Zeus",
        InheritFrom = "EnemyProjectileIn",
        ChainTo = "EnemyProjectile_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Hera",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Poseidon",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Demeter",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Apollo",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Aphrodite",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Hephaestus",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Hestia",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyProjectileIn_Ares",
        InheritFrom = "EnemyProjectileIn_Zeus",
        ChainTo = "EnemyProjectile_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Zeus",
        InheritFrom = "WispFuseExplosion",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Hera",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Poseidon",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Demeter",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Apollo",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Aphrodite",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Hephaestus",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Hestia",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WispFuseExplosion_Ares",
        InheritFrom = "WispFuseExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Zeus",
        InheritFrom = "TreantProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
        Scale = 1,
		ScaleX = 0.8,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Hera",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Poseidon",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Demeter",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Apollo",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Aphrodite",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Hephaestus",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Hestia",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectile_Ares",
        InheritFrom = "TreantProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Zeus",
        InheritFrom = "TreantProjectileIn",
        ChainTo = "TreantProjectile_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
        StartScale = 0,
		EndScale = 0.1,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Hera",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Poseidon",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Demeter",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Apollo",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Aphrodite",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Hephaestus",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Hestia",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TreantProjectileIn_Ares",
        InheritFrom = "TreantProjectileIn_Zeus",
        ChainTo = "TreantProjectile_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Zeus",
        InheritFrom = "TurtleLobProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Hera",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Poseidon",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Demeter",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Apollo",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Aphrodite",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Hephaestus",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Hestia",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleLobProjectile_Ares",
        InheritFrom = "TurtleLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })
    
    table.insert(data.Animations,
    {
    Name = "TurtleBounceNova_Zeus",
    InheritFrom = "TurtleBounceNova",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Hera",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Poseidon",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Demeter",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Apollo",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Aphrodite",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Hephaestus",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Hestia",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TurtleBounceNova_Ares",
        InheritFrom = "TurtleBounceNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Zeus",
        InheritFrom = "FishmanRangedProjectileIn",
        ChainTo = "FishmanRangedProjectile_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Hera",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Poseidon",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Demeter",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Apollo",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Aphrodite",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Hephaestus",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Hestia",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileIn_Ares",
        InheritFrom = "FishmanRangedProjectileIn_Zeus",
        ChainTo = "FishmanRangedProjectile_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Zeus",
        InheritFrom = "FishmanRangedProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Hera",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Poseidon",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Demeter",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Apollo",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Aphrodite",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Hephaestus",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Hestia",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectile_Ares",
        InheritFrom = "FishmanRangedProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Zeus",
        InheritFrom = "FishmanRangedProjectileDetonate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Hera",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Poseidon",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Demeter",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Apollo",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Aphrodite",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Hephaestus",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Hestia",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanRangedProjectileDetonate_Ares",
        InheritFrom = "FishmanRangedProjectileDetonate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Zeus",
        InheritFrom = "FishmanTridentStrike",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Hera",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Poseidon",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Demeter",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Apollo",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Aphrodite",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Hephaestus",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Hestia",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FishmanTridentStrike_Ares",
        InheritFrom = "FishmanTridentStrike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "WaterUnitProjectile_Zeus",
    InheritFrom = "WaterUnitProjectile",
    ChainTo = "WaterUnitProjectileLoop_Zeus",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Hera",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Poseidon",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Demeter",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Apollo",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Aphrodite",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Hephaestus",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Hestia",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectile_Ares",
        InheritFrom = "WaterUnitProjectile_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

        table.insert(data.Animations,
    {
    Name = "WaterUnitProjectileLoop_Zeus",
    InheritFrom = "WaterUnitProjectileLoop",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Hera",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Poseidon",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Demeter",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Apollo",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Aphrodite",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Hephaestus",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Hestia",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileLoop_Ares",
        InheritFrom = "WaterUnitProjectileLoop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "WaterUnitProjectileSpitSplit1_Zeus",
    InheritFrom = "WaterUnitProjectileSpitSplit1",
    ChainTo = "WaterUnitProjectileLoop_Zeus",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Hera",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Poseidon",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Demeter",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Apollo",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Aphrodite",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Hephaestus",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Hestia",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit1_Ares",
        InheritFrom = "WaterUnitProjectileSpitSplit1_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

        table.insert(data.Animations,
    {
    Name = "WaterUnitProjectileSpitSplit2_Zeus",
    InheritFrom = "WaterUnitProjectileSpitSplit2",
    ChainTo = "WaterUnitProjectileLoop_Zeus",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Hera",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Poseidon",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Demeter",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Apollo",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Aphrodite",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Hephaestus",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Hestia",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaterUnitProjectileSpitSplit2_Ares",
        InheritFrom = "WaterUnitProjectileSpitSplit2_Zeus",
        ChainTo = "WaterUnitProjectileLoop_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "RadiatorBeamLongRange_Zeus",
    InheritFrom = "RadiatorBeamLongRange",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Hera",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Poseidon",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Demeter",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Apollo",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Aphrodite",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Hephaestus",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Hestia",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRange_Ares",
        InheritFrom = "RadiatorBeamLongRange_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "RadiatorBeamLongRangeIn_Zeus",
    InheritFrom = "RadiatorBeamLongRangeIn",
    ColorFromOwner = "Ignore",
    Color = {},
    ChainTo = "RadiatorBeamLongRange_Zeus",
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Hera",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Poseidon",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Demeter",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Apollo",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Aphrodite",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Hephaestus",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Hestia",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeIn_Ares",
        InheritFrom = "RadiatorBeamLongRangeIn_Zeus",
        ChainTo = "RadiatorBeamLongRange_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
    Name = "RadiatorBeamLongRangeOut_Zeus",
    InheritFrom = "RadiatorBeamLongRangeOut",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Hera",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Poseidon",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Demeter",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Apollo",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Aphrodite",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Hephaestus",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Hestia",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RadiatorBeamLongRangeOut_Ares",
        InheritFrom = "RadiatorBeamLongRangeOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })


    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Zeus",
        InheritFrom = "JellyfishStingRing",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Hera",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Poseidon",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Demeter",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Apollo",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Aphrodite",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Hephaestus",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Hestia",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRing_Ares",
        InheritFrom = "JellyfishStingRing_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Zeus",
        InheritFrom = "JellyfishStingRingIn",
        ChainTo = "JellyfishStingRing_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Hera",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Poseidon",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Demeter",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Apollo",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Aphrodite",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Hephaestus",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Hestia",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "JellyfishStingRingIn_Ares",
        InheritFrom = "JellyfishStingRingIn_Zeus",
        ChainTo = "JellyfishStingRing_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Zeus",
        InheritFrom = "MiasmaWorm",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Hera",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Poseidon",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Demeter",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Apollo",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Aphrodite",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Hephaestus",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Hestia",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MiasmaWorm_Ares",
        InheritFrom = "MiasmaWorm_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Zeus",
        InheritFrom = "OctofishInkProjectile",
        VisualFx = "MiasmaWorm_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Hera",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Poseidon",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Demeter",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Apollo",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Aphrodite",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Hephaestus",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Hestia",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "OctofishInkProjectile_Ares",
        InheritFrom = "OctofishInkProjectile_Zeus",
        VisualFx = "MiasmaWorm_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Zeus",
        InheritFrom = "RatSwipe",
        ColorFromOwner = "Ignore",
        Color = {},
        CreateAnimation = null,
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
        IsometricSkew = "X",
		Scale = 1.5,
		ScaleY = 0.6,
		Slides = {
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
			{ DurationFrames = 6 },
			{ DurationFrames = 2 },
			{ DurationFrames = 2 },
			{ DurationFrames = 2 },
			{ DurationFrames = 2 },
			{ DurationFrames = 2 },
			{ DurationFrames = 2 },
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
			{ DurationFrames = 1 },
        },
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Hera",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Poseidon",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Demeter",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Apollo",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Aphrodite",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Hephaestus",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Hestia",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipeRush_Ares",
        InheritFrom = "RatSwipeRush_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "SirenDrummerCircleNova_Zeus",
    InheritFrom = "SirenDrummerCircleNova",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Hera",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Poseidon",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Demeter",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Apollo",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Aphrodite",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Hephaestus",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Hestia",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenDrummerCircleNova_Ares",
        InheritFrom = "SirenDrummerCircleNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "SirenKeytaristPowerslideMeleeGlow_Zeus",
    InheritFrom = "SirenKeytaristPowerslideMeleeGlow",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Hera",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Poseidon",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Demeter",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Apollo",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Aphrodite",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Hephaestus",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Hestia",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SirenKeytaristPowerslideMeleeGlow_Ares",
        InheritFrom = "SirenKeytaristPowerslideMeleeGlow_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScyllaNote_Zeus",
    InheritFrom = "ScyllaNote",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Hera",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Poseidon",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Demeter",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Apollo",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Aphrodite",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Hephaestus",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Hestia",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNote_Ares",
        InheritFrom = "ScyllaNote_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScyllaNoteExplosion_Zeus",
    InheritFrom = "ScyllaNoteExplosion",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Hera",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Poseidon",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Demeter",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Apollo",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Aphrodite",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Hephaestus",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Hestia",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScyllaNoteExplosion_Ares",
        InheritFrom = "ScyllaNoteExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Zeus",
        InheritFrom = "Projectile_BloodlessGrenadier",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Hera",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Poseidon",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Demeter",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Apollo",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Aphrodite",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Hephaestus",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Hestia",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadier_Ares",
        InheritFrom = "Projectile_BloodlessGrenadier_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Zeus",
        InheritFrom = "Projectile_BloodlessGrenadierPitch",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Hera",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Poseidon",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Demeter",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Apollo",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Aphrodite",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Hephaestus",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Hestia",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "Projectile_BloodlessGrenadierPitch_Ares",
        InheritFrom = "Projectile_BloodlessGrenadierPitch_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Zeus",
        InheritFrom = "WaveFistFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Hera",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Poseidon",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Demeter",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Apollo",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Aphrodite",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Hephaestus",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Hestia",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "WaveFistFx_Ares",
        InheritFrom = "WaveFistFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "CorruptedShadeProjectileDissipate_Zeus",
    InheritFrom = "CorruptedShadeProjectileDissipate",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Hera",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Poseidon",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Demeter",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Apollo",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Aphrodite",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Hephaestus",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Hestia",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileDissipate_Ares",
        InheritFrom = "CorruptedShadeProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "CorruptedShadeProjectileImpact_Zeus",
    InheritFrom = "CorruptedShadeProjectileImpact",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Hera",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Poseidon",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Demeter",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Apollo",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Aphrodite",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Hephaestus",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Hestia",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectileImpact_Ares",
        InheritFrom = "CorruptedShadeProjectileImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "CorruptedShadeProjectile_Zeus",
    InheritFrom = "CorruptedShadeProjectile",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Hera",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Poseidon",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Demeter",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Apollo",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Aphrodite",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Hephaestus",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Hestia",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeProjectile_Ares",
        InheritFrom = "CorruptedShadeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Zeus",
        InheritFrom = "CorruptedShadeMRamFxA",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Hera",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Poseidon",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Demeter",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Apollo",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Aphrodite",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Hephaestus",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Hestia",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeMRamFxA_Ares",
        InheritFrom = "CorruptedShadeMRamFxA_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Zeus",
        InheritFrom = "CorruptedShadeRamFx",
        VisualFx = "CorruptedShadeMRamFxA_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Hera",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Poseidon",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Demeter",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Apollo",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Aphrodite",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Hephaestus",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Hestia",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeRamFx_Ares",
        InheritFrom = "CorruptedShadeRamFx_Zeus",
        VisualFx = "CorruptedShadeMRamFxA_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Zeus",
        InheritFrom = "CorruptedShadeLNovaSpikes",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Hera",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Poseidon",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Demeter",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Apollo",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Aphrodite",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Hephaestus",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Hestia",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNovaSpikes_Ares",
        InheritFrom = "CorruptedShadeLNovaSpikes_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
    Name = "CorruptedShadeLNova_Zeus",
    InheritFrom = "CorruptedShadeLNova",
    VisualFx = "CorruptedShadeLNovaSpikes_Zeus",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Hera",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Poseidon",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Demeter",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Apollo",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Aphrodite",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Hephaestus",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Hestia",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CorruptedShadeLNova_Ares",
        InheritFrom = "CorruptedShadeLNova_Zeus",
        VisualFx = "CorruptedShadeLNovaSpikes_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "FogEmitterSweepArc_Zeus",
    InheritFrom = "FogEmitterSweepArc",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Hera",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Poseidon",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Demeter",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Apollo",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Aphrodite",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Hephaestus",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Hestia",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FogEmitterSweepArc_Ares",
        InheritFrom = "FogEmitterSweepArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "BrokenHeartedNova_Zeus",
    InheritFrom = "BrokenHeartedNova",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Hera",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Poseidon",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Demeter",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Apollo",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Aphrodite",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Hephaestus",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Hestia",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BrokenHeartedNova_Ares",
        InheritFrom = "BrokenHeartedNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "MournerPunchFx_Zeus",
    InheritFrom = "MournerPunchFx",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Hera",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Poseidon",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Demeter",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Apollo",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Aphrodite",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Hephaestus",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Hestia",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MournerPunchFx_Ares",
        InheritFrom = "MournerPunchFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "ScreamerConeFxLarge_Zeus",
    InheritFrom = "ScreamerConeFxLarge",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Hera",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Poseidon",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Demeter",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Apollo",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Aphrodite",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Hephaestus",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Hestia",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ScreamerConeFxLarge_Ares",
        InheritFrom = "ScreamerConeFxLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "LycanSwipeBase_Zeus",
    InheritFrom = "LycanSwipeBase",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Hera",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Poseidon",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Demeter",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Apollo",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Aphrodite",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Hephaestus",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Hestia",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipeBase_Ares",
        InheritFrom = "LycanSwipeBase_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "LamiaSkyCast_Zeus",
    InheritFrom = "LamiaSkyCast",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Hera",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Poseidon",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Demeter",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Apollo",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Aphrodite",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Hephaestus",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Hestia",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaSkyCast_Ares",
        InheritFrom = "LamiaSkyCast_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })
    
    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Zeus",
        InheritFrom = "LamiaLightning",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Hera",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Poseidon",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Demeter",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Apollo",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Aphrodite",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Hephaestus",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Hestia",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "LamiaLightning_Ares",
        InheritFrom = "LamiaLightning_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
    Name = "VampireSwipe_Zeus",
    InheritFrom = "VampireSwipe",
    ColorFromOwner = "Ignore",
    Color = {},
    AddColor = true,
    StartRed = 1.0,
    StartGreen = 0.95,
    StartBlue = 0.7,
    EndRed = 0.9999,
    EndGreen = 0.8,
    EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Hera",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Poseidon",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Demeter",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Apollo",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Aphrodite",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Hephaestus",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Hestia",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "VampireSwipe_Ares",
        InheritFrom = "VampireSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Zeus",
        InheritFrom = "CerbFireballBreath",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Hera",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Poseidon",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Demeter",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Apollo",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Aphrodite",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Hephaestus",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Hestia",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreath_Ares",
        InheritFrom = "CerbFireballBreath_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Zeus",
        InheritFrom = "CerbFireballBreathIn",
        ChainTo = "CerbFireballBreath_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Hera",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Poseidon",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Demeter",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Apollo",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Aphrodite",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Hephaestus",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Hestia",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerbFireballBreathIn_Ares",
        InheritFrom = "CerbFireballBreathIn_Zeus",
        ChainTo = "CerbFireballBreath_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Zeus",
        InheritFrom = "CerberusTurnSlamNova",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Hera",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Poseidon",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Demeter",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Apollo",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Aphrodite",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Hephaestus",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Hestia",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CerberusTurnSlamNova_Ares",
        InheritFrom = "CerberusTurnSlamNova_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Zeus",
        InheritFrom = "GoldElementalBeam",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Hera",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Poseidon",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Demeter",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Apollo",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Aphrodite",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Hephaestus",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Hestia",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalBeam_Ares",
        InheritFrom = "GoldElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Zeus",
        InheritFrom = "GoldElementalCoinBounce",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Hera",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Poseidon",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Demeter",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Apollo",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Aphrodite",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Hephaestus",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Hestia",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounce_Ares",
        InheritFrom = "GoldElementalCoinBounce_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Zeus",
        InheritFrom = "GoldElementalCoinBounceOut",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Hera",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Poseidon",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Demeter",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Apollo",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Aphrodite",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Hephaestus",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Hestia",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GoldElementalCoinBounceOut_Ares",
        InheritFrom = "GoldElementalCoinBounceOut_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Zeus",
        InheritFrom = "ThugShoveFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Hera",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Poseidon",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Demeter",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Apollo",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Aphrodite",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Hephaestus",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Hestia",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ThugShoveFx_Ares",
        InheritFrom = "ThugShoveFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Zeus",
        InheritFrom = "TimeElementalProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Hera",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Poseidon",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Demeter",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Apollo",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Aphrodite",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Hephaestus",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Hestia",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectile_Ares",
        InheritFrom = "TimeElementalProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Zeus",
        InheritFrom = "TimeElementalProjectileIn",
        ChainTo = "TimeElementalProjectile_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Hera",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Poseidon",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Demeter",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Apollo",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Aphrodite",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Hephaestus",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Hestia",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileIn_Ares",
        InheritFrom = "TimeElementalProjectileIn_Zeus",
        ChainTo = "TimeElementalProjectile_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Zeus",
        InheritFrom = "TimeElementalProjectileDissipate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Hera",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Poseidon",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Demeter",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Apollo",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Aphrodite",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Hephaestus",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Hestia",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TimeElementalProjectileDissipate_Ares",
        InheritFrom = "TimeElementalProjectileDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Zeus",
        InheritFrom = "SatyrLanceDissipate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Hera",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Poseidon",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Demeter",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Apollo",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Aphrodite",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Hephaestus",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Hestia",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceDissipate_Ares",
        InheritFrom = "SatyrLanceDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Zeus",
        InheritFrom = "SatyrLanceImpact",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Hera",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Poseidon",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Demeter",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Apollo",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Aphrodite",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Hephaestus",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Hestia",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrLanceImpact_Ares",
        InheritFrom = "SatyrLanceImpact_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Zeus",
        InheritFrom = "SatyrSpearProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Hera",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Poseidon",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Demeter",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Apollo",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Aphrodite",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Hephaestus",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Hestia",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrSpearProjectile_Ares",
        InheritFrom = "SatyrSpearProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Zeus",
        InheritFrom = "SatyrCastFireballDissipate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Hera",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Poseidon",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Demeter",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Apollo",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Aphrodite",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Hephaestus",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Hestia",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballDissipate_Ares",
        InheritFrom = "SatyrCastFireballDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Zeus",
        InheritFrom = "SatyrCastFireballTrail",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Hera",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Poseidon",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Demeter",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Apollo",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Aphrodite",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Hephaestus",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Hestia",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballTrail_Ares",
        InheritFrom = "SatyrCastFireballTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Zeus",
        InheritFrom = "SatyrCastFireball",
        VisualFx = "SatyrCastFireballTrail_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Hera",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Poseidon",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Demeter",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Apollo",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Aphrodite",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Hephaestus",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Hestia",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireball_Ares",
        InheritFrom = "SatyrCastFireball_Zeus",
        VisualFx = "SatyrCastFireballTrail_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Zeus",
        InheritFrom = "SatyrCastFireballIn",
        ChainTo = "SatyrCastFireball_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Hera",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Poseidon",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Demeter",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Apollo",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Aphrodite",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Hephaestus",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Hestia",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCastFireballIn_Ares",
        InheritFrom = "SatyrCastFireballIn_Zeus",
        ChainTo = "SatyrCastFireball_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Zeus",
        InheritFrom = "SatyrRatCatcherMeleeFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Hera",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Poseidon",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Demeter",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Apollo",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Aphrodite",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Hephaestus",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Hestia",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRatCatcherMeleeFx_Ares",
        InheritFrom = "SatyrRatCatcherMeleeFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Zeus",
        InheritFrom = "RatSwipe",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Hera",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Poseidon",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Demeter",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Apollo",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Aphrodite",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Hephaestus",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Hestia",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "RatSwipe_Ares",
        InheritFrom = "RatSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Zeus",
        InheritFrom = "CharybdisTentacleSpike",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Hera",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Poseidon",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Demeter",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Apollo",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Aphrodite",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Hephaestus",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Hestia",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpike_Ares",
        InheritFrom = "CharybdisTentacleSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Zeus",
        InheritFrom = "CharybdisTentacleSpikeIn",
        ChainTo = "CharybdisTentacleSpike_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Hera",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Poseidon",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Demeter",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Apollo",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Aphrodite",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Hephaestus",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Hestia",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CharybdisTentacleSpikeIn_Ares",
        InheritFrom = "CharybdisTentacleSpikeIn_Zeus",
        ChainTo = "CharybdisTentacleSpike_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Zeus",
        InheritFrom = "ChronosScytheThrowFx2",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Hera",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Poseidon",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Demeter",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Apollo",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Aphrodite",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Hephaestus",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Hestia",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx2_Ares",
        InheritFrom = "ChronosScytheThrowFx2_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Zeus",
        InheritFrom = "ChronosScytheThrowFx",
        VisualFx = "ChronosScytheThrowFx2_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Hera",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Poseidon",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Demeter",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Apollo",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Aphrodite",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Hephaestus",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Hestia",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFx_Ares",
        InheritFrom = "ChronosScytheThrowFx_Zeus",
        VisualFx = "ChronosScytheThrowFx2_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

        table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Zeus",
        InheritFrom = "ChronosScytheThrowFade",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Hera",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Poseidon",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Demeter",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Apollo",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Aphrodite",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Hephaestus",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Hestia",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosScytheThrowFade_Ares",
        InheritFrom = "ChronosScytheThrowFade_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Zeus",
        InheritFrom = "BloodstoneProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Hera",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Poseidon",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Demeter",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Apollo",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Aphrodite",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Hephaestus",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Hestia",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneProjectile_Ares",
        InheritFrom = "BloodstoneProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Zeus",
        InheritFrom = "BloodstoneHitFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Hera",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Poseidon",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Demeter",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Apollo",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Aphrodite",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Hephaestus",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Hestia",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BloodstoneHitFx_Ares",
        InheritFrom = "BloodstoneHitFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Zeus",
        InheritFrom = "SpearSwipe360-Displace",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Hera",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Poseidon",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Demeter",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Apollo",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Aphrodite",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Hephaestus",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Hestia",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360-Displace_Ares",
        InheritFrom = "SpearSwipe360-Displace_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Zeus",
        InheritFrom = "SpearSwipe360B",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Hera",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Poseidon",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Demeter",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Apollo",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Aphrodite",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Hephaestus",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Hestia",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360B_Ares",
        InheritFrom = "SpearSwipe360B_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Zeus",
        InheritFrom = "SpearSwipe360",
        ColorFromOwner = "Ignore",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Zeus",
        CreateAnimation = "SpearSwipe360-Displace_Zeus",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Hera",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Hera",
        CreateAnimation = "SpearSwipe360-Displace_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Poseidon",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Poseidon",
        CreateAnimation = "SpearSwipe360-Displace_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Demeter",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Demeter",
        CreateAnimation = "SpearSwipe360-Displace_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Apollo",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Apollo",
        CreateAnimation = "SpearSwipe360-Displace_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Aphrodite",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Aphrodite",
        CreateAnimation = "SpearSwipe360-Displace_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Hephaestus",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Hephaestus",
        CreateAnimation = "SpearSwipe360-Displace_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Hestia",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Hestia",
        CreateAnimation = "SpearSwipe360-Displace_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SpearSwipe360_Ares",
        InheritFrom = "SpearSwipe360_Zeus",
        ClearCreateAnimations = true,
        ChildAnimation = "SpearSwipe360B_Ares",
        CreateAnimation = "SpearSwipe360-Displace_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Zeus",
        InheritFrom = "CarrionSweepAttackFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Hera",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Poseidon",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Demeter",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Apollo",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Aphrodite",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Hephaestus",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Hestia",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CarrionSweepAttackFx_Ares",
        InheritFrom = "CarrionSweepAttackFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "LycanSwipe_Zeus",
        InheritFrom = "LycanSwipe",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Hera",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Poseidon",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Demeter",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Apollo",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Aphrodite",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Hephaestus",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Hestia",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "LycanSwipe_Ares",
        InheritFrom = "LycanSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Zeus",
        InheritFrom = "GreekFireLarge",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Hera",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Poseidon",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Demeter",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Apollo",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Aphrodite",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Hephaestus",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Hestia",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GreekFireLarge_Ares",
        InheritFrom = "GreekFireLarge_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })


    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Zeus",
        InheritFrom = "FireBarrelFlameTrail",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Hera",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Poseidon",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Demeter",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Apollo",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Aphrodite",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Hephaestus",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Hestia",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelFlameTrail_Ares",
        InheritFrom = "FireBarrelFlameTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Zeus",
        InheritFrom = "FireBarrelZombieProjectile",
        VisualFx = "FireBarrelFlameTrail_Zeus",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Hera",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Hera",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Poseidon",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Poseidon",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Demeter",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Demeter",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Apollo",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Apollo",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Aphrodite",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Aphrodite",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Hephaestus",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Hephaestus",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Hestia",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Hestia",
    })

    table.insert(data.Animations,
    {
        Name = "FireBarrelZombieProjectile_Ares",
        InheritFrom = "FireBarrelZombieProjectile_Zeus",
        VisualFx = "FireBarrelFlameTrail_Ares",
    })

        table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Zeus",
        InheritFrom = "ZombieAssassinStabFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Hera",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Poseidon",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Demeter",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Apollo",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Aphrodite",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Hephaestus",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Hestia",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieAssassinStabFx_Ares",
        InheritFrom = "ZombieAssassinStabFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Zeus",
        InheritFrom = "MudmanEyeballExplosionFlare",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Hera",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Poseidon",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Demeter",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Apollo",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Aphrodite",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Hephaestus",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Hestia",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballExplosionFlare_Ares",
        InheritFrom = "MudmanEyeballExplosionFlare_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Zeus",
        InheritFrom = "MudmanEyeballProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Hera",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Poseidon",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Demeter",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Apollo",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Aphrodite",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Hephaestus",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Hestia",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MudmanEyeballProjectile_Ares",
        InheritFrom = "MudmanEyeballProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Zeus",
        InheritFrom = "ZombieSpawnerLobProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Hera",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Poseidon",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Demeter",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Apollo",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Aphrodite",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Hephaestus",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Hestia",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ZombieSpawnerLobProjectile_Ares",
        InheritFrom = "ZombieSpawnerLobProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Zeus",
        InheritFrom = "GhostProjectileAnim",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Hera",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Poseidon",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Demeter",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Apollo",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Aphrodite",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Hephaestus",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Hestia",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GhostProjectileAnim_Ares",
        InheritFrom = "GhostProjectileAnim_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Zeus",
        InheritFrom = "PolyphemusLeapTouchdownFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Hera",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Poseidon",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Demeter",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Apollo",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Aphrodite",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Hephaestus",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Hestia",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "PolyphemusLeapTouchdownFx_Ares",
        InheritFrom = "PolyphemusLeapTouchdownFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Zeus",
        InheritFrom = "SatyrCrossbowBoltTrail",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Hera",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Poseidon",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Demeter",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Apollo",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Aphrodite",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Hephaestus",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Hestia",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBoltTrail_Ares",
        InheritFrom = "SatyrCrossbowBoltTrail_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Zeus",
        InheritFrom = "SatyrCrossbowBolt",
        VisualFx = "SatyrCrossbowBoltTrail_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Hera",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Poseidon",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Demeter",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Apollo",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Aphrodite",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Hephaestus",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Hestia",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrCrossbowBolt_Ares",
        InheritFrom = "SatyrCrossbowBolt_Zeus",
        VisualFx = "SatyrCrossbowBoltTrail_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Zeus",
        InheritFrom = "CyclopsKickArc",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Hera",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Poseidon",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Demeter",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Apollo",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Aphrodite",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Hephaestus",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Hestia",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArc_Ares",
        InheritFrom = "CyclopsKickArc_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Zeus",
        InheritFrom = "CyclopsKickArcIn",
        ChainTo = "CyclopsKickArc_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Hera",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Poseidon",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Demeter",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Apollo",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Aphrodite",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Hephaestus",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Hestia",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CyclopsKickArcIn_Ares",
        InheritFrom = "CyclopsKickArcIn_Zeus",
        ChainTo = "CyclopsKickArc_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Zeus",
        InheritFrom = "MineExplosionFadeDecal",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Hera",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Poseidon",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Demeter",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Apollo",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Aphrodite",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Hephaestus",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Hestia",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MineExplosionFadeDecal_Ares",
        InheritFrom = "MineExplosionFadeDecal_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })


    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Zeus",
        InheritFrom = "EnemyHeavySlashWretchAssassin",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Hera",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Poseidon",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Demeter",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Apollo",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Aphrodite",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Hephaestus",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Hestia",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyHeavySlashWretchAssassin_Ares",
        InheritFrom = "EnemyHeavySlashWretchAssassin_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "SticklerSpear_Zeus",
        InheritFrom = "SticklerSpear",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Hera",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Poseidon",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Demeter",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Apollo",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Aphrodite",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Hephaestus",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Hestia",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpear_Ares",
        InheritFrom = "SticklerSpear_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Zeus",
        InheritFrom = "SticklerSpearDissipate",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Hera",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Poseidon",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Demeter",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Apollo",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Aphrodite",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Hephaestus",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Hestia",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SticklerSpearDissipate_Ares",
        InheritFrom = "SticklerSpearDissipate_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

      table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Zeus",
        InheritFrom = "SwabAnchorNovaQuick",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Hera",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Poseidon",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Demeter",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Apollo",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Aphrodite",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Hephaestus",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Hestia",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SwabAnchorNovaQuick_Ares",
        InheritFrom = "SwabAnchorNovaQuick_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Zeus",
        InheritFrom = "ShipsSwordSwipeRight",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Hera",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Poseidon",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Demeter",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Apollo",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Aphrodite",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Hephaestus",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Hestia",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "ShipsSwordSwipeRight_Ares",
        InheritFrom = "ShipsSwordSwipeRight_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Zeus",
        InheritFrom = "HarpySliceFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Hera",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Poseidon",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Demeter",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Apollo",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Aphrodite",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Hephaestus",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Hestia",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpySliceFx_Ares",
        InheritFrom = "HarpySliceFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "CaptainProjectileTrailLaser_Zeus",
        InheritFrom = "CaptainProjectileTrailLaser",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Hera",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Poseidon",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Demeter",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Apollo",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Aphrodite",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Hephaestus",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Hestia",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectileTrailLaser_Ares",
        InheritFrom = "CaptainProjectileTrailLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "CaptainProjectile_Zeus",
        InheritFrom = "CaptainProjectile",
        VisualFx = "CaptainProjectileTrailLaser_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Hera",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Poseidon",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Demeter",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Apollo",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Aphrodite",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Hephaestus",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Hestia",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "CaptainProjectile_Ares",
        InheritFrom = "CaptainProjectile_Zeus",
        VisualFx = "CaptainProjectileTrailLaser_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "GunTrail_Sniper_Zeus",
        InheritFrom = "GunTrail_Sniper",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Hera",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Poseidon",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Demeter",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Apollo",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Aphrodite",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Hephaestus",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Hestia",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunTrail_Sniper_Ares",
        InheritFrom = "GunTrail_Sniper_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Zeus",
        InheritFrom = "GunWeaponProjectile_Sniper",
        VisualFx = "GunTrail_Sniper_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Hera",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Poseidon",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Demeter",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Apollo",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Aphrodite",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Hephaestus",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Hestia",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunWeaponProjectile_Sniper_Ares",
        InheritFrom = "GunWeaponProjectile_Sniper_Zeus",
        VisualFx = "GunTrail_Sniper_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Zeus",
        InheritFrom = "GunLaser",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Hera",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Poseidon",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Demeter",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Apollo",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Aphrodite",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Hephaestus",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Hestia",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "GunLaser_Ares",
        InheritFrom = "GunLaser_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })


    table.insert(data.Animations,
        {
        Name = "SentryBotProjectile_Zeus",
        InheritFrom = "SentryBotProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Hera",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Poseidon",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Demeter",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Apollo",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Aphrodite",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Hephaestus",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Hestia",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SentryBotProjectile_Ares",
        InheritFrom = "SentryBotProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "EnemyBeamerProjectile_Zeus",
        InheritFrom = "EnemyBeamerProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Hera",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Poseidon",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Demeter",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Apollo",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Aphrodite",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Hephaestus",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Hestia",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnemyBeamerProjectile_Ares",
        InheritFrom = "EnemyBeamerProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
        {
        Name = "EnforcerWhirlwindFx_Zeus",
        InheritFrom = "EnforcerWhirlwindFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Hera",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Poseidon",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Demeter",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Apollo",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Aphrodite",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Hephaestus",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Hestia",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EnforcerWhirlwindFx_Ares",
        InheritFrom = "EnforcerWhirlwindFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "HarpyTornado_Zeus",
        InheritFrom = "HarpyTornado",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Hera",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Poseidon",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Demeter",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Apollo",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Aphrodite",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Hephaestus",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Hestia",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "HarpyTornado_Ares",
        InheritFrom = "HarpyTornado_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "SatyrRocketProjectile_Zeus",
        InheritFrom = "SatyrRocketProjectile",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Hera",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Poseidon",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Demeter",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Apollo",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Aphrodite",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Hephaestus",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Hestia",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketProjectile_Ares",
        InheritFrom = "SatyrRocketProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })
    
    table.insert(data.Animations,
        {
        Name = "SatyrRocketExplosion_Zeus",
        InheritFrom = "SatyrRocketExplosion",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Hera",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Poseidon",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Demeter",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Apollo",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Aphrodite",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Hephaestus",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Hestia",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SatyrRocketExplosion_Ares",
        InheritFrom = "SatyrRocketExplosion_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Zeus",
        InheritFrom = "DragonTailWhip",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Hera",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Poseidon",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Demeter",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Apollo",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Aphrodite",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Hephaestus",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Hestia",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonTailWhip_Ares",
        InheritFrom = "DragonTailWhip_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Zeus",
        InheritFrom = "DragonFireNoLinger",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Hera",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Poseidon",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Demeter",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Apollo",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Aphrodite",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Hephaestus",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Hestia",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonFireNoLinger_Ares",
        InheritFrom = "DragonFireNoLinger_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TalosShieldVerticalR_Zeus",
        InheritFrom = "TalosShieldVerticalR",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Hera",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Poseidon",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Demeter",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Apollo",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Aphrodite",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Hephaestus",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Hestia",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TalosShieldVerticalR_Ares",
        InheritFrom = "TalosShieldVerticalR_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "HeraclesEMSpinFx_Zeus",
        InheritFrom = "HeraclesEMSpinFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Hera",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Poseidon",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Demeter",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Apollo",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Aphrodite",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Hephaestus",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Hestia",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "HeraclesEMSpinFx_Ares",
        InheritFrom = "HeraclesEMSpinFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "PrometheusFirePillarFx_Zeus",
        InheritFrom = "PrometheusFirePillarFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Hera",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Poseidon",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Demeter",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Apollo",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Aphrodite",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Hephaestus",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Hestia",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "PrometheusFirePillarFx_Ares",
        InheritFrom = "PrometheusFirePillarFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "SimpleLocustFx_Zeus",
        InheritFrom = "SimpleLocustFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Hera",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Poseidon",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Demeter",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Apollo",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Aphrodite",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Hephaestus",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Hestia",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "SimpleLocustFx_Ares",
        InheritFrom = "SimpleLocustFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TyphonStalkerWaveSpike_Zeus",
        InheritFrom = "TyphonStalkerWaveSpike",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Hera",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Poseidon",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Demeter",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Apollo",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Aphrodite",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Hephaestus",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Hestia",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonStalkerWaveSpike_Ares",
        InheritFrom = "TyphonStalkerWaveSpike_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "BruteChargeHornFx_Zeus",
        InheritFrom = "BruteChargeHornFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Hera",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Poseidon",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Demeter",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Apollo",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Aphrodite",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Hephaestus",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Hestia",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteChargeHornFx_Ares",
        InheritFrom = "BruteChargeHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "MatiProjectileFx_Zeus",
        InheritFrom = "MatiProjectileFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Hera",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Poseidon",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Demeter",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Apollo",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Aphrodite",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Hephaestus",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Hestia",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFx_Ares",
        InheritFrom = "MatiProjectileFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "MatiProjectileFxIn_Zeus",
        InheritFrom = "MatiProjectileFxIn",
        ChainTo = "MatiProjectileFx_Zeus",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Hera",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Poseidon",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Demeter",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Apollo",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Aphrodite",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Hephaestus",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Hestia",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "MatiProjectileFxIn_Ares",
        InheritFrom = "MatiProjectileFxIn_Zeus",
        ChainTo = "MatiProjectileFx_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "DragonBurrowerRanged_Zeus",
        InheritFrom = "DragonBurrowerRanged",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Hera",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Poseidon",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Demeter",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Apollo",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Aphrodite",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Hephaestus",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Hestia",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRanged_Ares",
        InheritFrom = "DragonBurrowerRanged_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "DragonBurrowerRangedIn_Zeus",
        InheritFrom = "DragonBurrowerRangedIn",
        ChainTo = "DragonBurrowerRanged_Zeus",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Hera",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Poseidon",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Demeter",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Apollo",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Aphrodite",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Hephaestus",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Hestia",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "DragonBurrowerRangedIn_Ares",
        InheritFrom = "DragonBurrowerRangedIn_Zeus",
        ChainTo = "DragonBurrowerRanged_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
       {
        Name = "EarthElementalBeam_Zeus",
        InheritFrom = "EarthElementalBeam",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Hera",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Poseidon",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Demeter",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Apollo",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Aphrodite",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Hephaestus",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Hestia",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "EarthElementalBeam_Ares",
        InheritFrom = "EarthElementalBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "BruteMeleeSwipe_Zeus",
        InheritFrom = "BruteMeleeSwipe",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Hera",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Poseidon",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Demeter",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Apollo",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Aphrodite",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Hephaestus",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Hestia",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "BruteMeleeSwipe_Ares",
        InheritFrom = "BruteMeleeSwipe_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
       {
        Name = "TyphonTailDrillFx_Zeus",
        InheritFrom = "TyphonTailDrillFx",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Hera",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Poseidon",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Demeter",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Apollo",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Aphrodite",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Hephaestus",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Hestia",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonTailDrillFx_Ares",
        InheritFrom = "TyphonTailDrillFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TyphonHeadEyeProjectile_Zeus",
        InheritFrom = "TyphonHeadEyeProjectile",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Hera",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Poseidon",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Demeter",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Apollo",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Aphrodite",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Hephaestus",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Hestia",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectile_Ares",
        InheritFrom = "TyphonHeadEyeProjectile_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TyphonHeadEyeProjectilePop_Zeus",
        InheritFrom = "TyphonHeadEyeProjectilePop",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Hera",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Poseidon",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Demeter",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Apollo",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Aphrodite",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Hephaestus",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Hestia",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectilePop_Ares",
        InheritFrom = "TyphonHeadEyeProjectilePop_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

     table.insert(data.Animations,
       {
        Name = "TyphonHeadEyeProjectileSecondary_Zeus",
        InheritFrom = "TyphonHeadEyeProjectileSecondary",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Hera",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Poseidon",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Demeter",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Apollo",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Aphrodite",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Hephaestus",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Hestia",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadEyeProjectileSecondary_Ares",
        InheritFrom = "TyphonHeadEyeProjectileSecondary_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TyphonHeadTongueBeam_Zeus",
        InheritFrom = "TyphonHeadTongueBeam",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Hera",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Poseidon",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Demeter",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Apollo",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Aphrodite",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Hephaestus",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Hestia",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeam_Ares",
        InheritFrom = "TyphonHeadTongueBeam_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
        {
        Name = "TyphonHeadTongueBeamIn_Zeus",
        InheritFrom = "TyphonHeadTongueBeamIn",
        ChainTo = "TyphonHeadTongueBeam_Zeus",
        Color = {},
        ColorFromOwner = "Ignore",
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Hera",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Hera",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Poseidon",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Poseidon",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Demeter",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Demeter",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Apollo",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Apollo",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Aphrodite",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Aphrodite",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Hephaestus",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Hephaestus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Hestia",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Hestia",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonHeadTongueBeamIn_Ares",
        InheritFrom = "TyphonHeadTongueBeamIn_Zeus",
        ChainTo = "TyphonHeadTongueBeam_Ares",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Zeus",
        InheritFrom = "TyphonRamHornFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Hera",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 0.0,
        StartGreen = 1.0,
        StartBlue = 0.1,
        EndRed = 0.1,
        EndGreen = 0.3,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Poseidon",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 0.1,
        StartGreen = 1.0,
        StartBlue = 0.8,
        EndRed = 0,
        EndGreen = 0.6,
        EndBlue = 1.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Demeter",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 0.25,
        StartGreen = 0.35,
        StartBlue = 0.5,
        EndRed = 0.35,
        EndGreen = 0.25,
        EndBlue = 0.4999,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Apollo",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.9,
        StartBlue = 0.7,
        EndRed = 0.999,
        EndGreen = 0.85,
        EndBlue = 0.05,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Aphrodite",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.6,
        StartBlue = 0.8,
        EndRed = 0.99,
        EndGreen = 0.05,
        EndBlue = 0.99,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Hephaestus",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 0.51,
        StartGreen = 0.82,
        StartBlue = 1.00,
        EndRed = 1.00,
        EndGreen = 0,
        EndBlue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Hestia",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.3,
        StartBlue = 0.02,
        EndRed = 0.999,
        EndGreen = 0.15,
        EndBlue = 0.0,
    })

    table.insert(data.Animations,
    {
        Name = "TyphonRamHornFx_Ares",
        InheritFrom = "TyphonRamHornFx_Zeus",
        StartRed = 1.0,
        StartGreen = 0.04,
        StartBlue = 0.001,
        EndRed = 0.999,
        EndGreen = 0.0,
        EndBlue = 0.0,
    })

    if ZagreusJourney then
        table.insert(data.Animations,
        {
            Name = "KirbyEnemyConeAttackPunchingBag",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Fx\\EnemyConeAttack\\EnemyConeAttack",
            Type = "Book",
            EndFrame = 26,
            NumFrames = 26,
            PlaySpeed = 60.0,
            StartFrame = 1,
            LocationFromOwner = "Ignore",
            PostRotateScaleY = 0.5,
            Ambient = 0.0,
            SortMode = "FromParent",
            OffsetZ = 80,
            PlaySpeed = 50,
            TimeModifierFraction = 0.1,
            ScaleFromOwner = "Ignore",
            AngleFromOwner = "Take",
            OriginX = 168,
            OriginY = 245,
            GroupName = "Standing",
        })

       
        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Zeus",
            InheritFrom = "KirbyEnemyConeAttackPunchingBag",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Hera",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Poseidon",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Demeter",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Apollo",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Aphrodite",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Hephaestus",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Hestia",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackPunchingBag_Ares",
            InheritFrom = "EnemyConeAttackPunchingBag_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name="KirbyHadesEnemyProjectile",
            CreateAnimation="EnemyProjectileGlow",
            FilePath="Fx\\EnemyProjectile\\EnemyProjectile",
            VisualFx="DisplaceHeatTrail",
            VisualFxManagerCap=400,
            AngleFromOwner="Ignore",
            Sound="/SFX/Enemy Sounds/EnemyProjectileAmbientLoop",
            SoundManagerCap=28,
            StopSoundOnFinishFade=0.25,
            EndFrame=60,
            Loop=true,
            NumFrames=60,
            RandomPlaySpeedMax=90,
            RandomPlaySpeedMin=60,
            StartFrame=1,
            OffsetZ=30,
            Scale=0.6,
            Ambient=0,
            VisualFxIntervalMax=0.1,
            VisualFxIntervalMin=0.11,
            OverlayVfx=true
        })
        
        table.insert(data.Animations,
        {
            Name = "KirbyHadesEnemyProjectileIn",
            InheritFrom = "KirbyHadesEnemyProjectile",
            ChainTo = "KirbyHadesEnemyProjectile",
            StartScale = 0.5,
            EndScale = 1,
            EaseIn = 0.9,
            EaseOut = 1.0,
            Duration = 0.1,
            AddColor = true,
            StartRed = 1,
            StartGreen = 0,
            StartBlue = 0.9,
            EndRed = 0,
            EndGreen = 0.001,
            EndBlue = 0,
            Loop = false,
            RandomFlipHorizontal = true,
            RandomFlipVertical = true,
            TransferFrameFromThis = true,
            RandomRotation = true,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Zeus",
            InheritFrom = "KirbyHadesEnemyProjectile",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Hera",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Poseidon",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Demeter",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Apollo",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Aphrodite",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Hephaestus",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Hestia",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectile_Ares",
            InheritFrom = "HadesEnemyProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        
        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Zeus",
            InheritFrom = "KirbyHadesEnemyProjectileIn",
            ChainTo = "HadesEnemyProjectile_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Hera",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Poseidon",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Demeter",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Apollo",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Aphrodite",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Hephaestus",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Hestia",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileIn_Ares",
            InheritFrom = "HadesEnemyProjectileIn_Zeus",
            ChainTo = "HadesEnemyProjectile_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyHadesEnemyProjectileImpact",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Fx\\EnemyProjectileImpact\\EnemyProjectileImpact",
            GroupName = "Standing",
            Type = "Book",
            AngleFromOwner = "Ignore",
            Sound = "/SFX/Enemy Sounds/EnemyProjectileDetonateExplode",
            ColorFromOwner = "Ignore",
            EndFrame = 16,
            NumFrames = 16,
            RandomPlaySpeedMax = 60.0,
            RandomPlaySpeedMin = 45.0,
            StartFrame = 1,
            RandomFlipHorizontal = true,
            RandomFlipVertical = true,
            LocationFromOwner = "Ignore",
            LocationZFromOwner = "Take",
            SortMode = "FromParent",
            RandomRotation = true,
            Scale = 1.2,
            ScaleFromOwner = "Ignore",
            Ambient = 0.0,
            OnlyWhenVisible = true,
            OverlayVfx = true,
            VisualFxManagerCap = 400,
            CreateAnimations = {
                { Name = "DisplaceShockwave-EnemyProjectileImpact" },
            },
            Slides = {
                { DurationFrames = 1, Frame = 1, },
                { DurationFrames = 1, Frame = 2, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 3, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 4, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 5, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 6, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 7, VisualFx = "EnemyProjectileImpactParticles", },
                { DurationFrames = 1, Frame = 8, VisualFx = "EnemyProjectileImpactParticles", },
            },
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Zeus",
            InheritFrom = "KirbyHadesEnemyProjectileImpact",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Hera",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Poseidon",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Demeter",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Apollo",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Aphrodite",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Hephaestus",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Hestia",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "HadesEnemyProjectileImpact_Ares",
            InheritFrom = "HadesEnemyProjectileImpact_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Zeus",
            InheritFrom = "EnemyLaser",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Hera",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Poseidon",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Demeter",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Apollo",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Aphrodite",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Hephaestus",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Hestia",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaser_Ares",
            InheritFrom = "EnemyLaser_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Zeus",
            InheritFrom = "EnemyLaserPreview",
            ChainTo = "EnemyLaser_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Hera",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Poseidon",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Demeter",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Apollo",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Aphrodite",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Hephaestus",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Hestia",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyLaserPreview_Ares",
            InheritFrom = "EnemyLaserPreview_Zeus",
            ChainTo = "EnemyLaser_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Zeus",
            InheritFrom = "ThugMeleeSwipe",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Hera",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Poseidon",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Demeter",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Apollo",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Aphrodite",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Hephaestus",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Hestia",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ThugMeleeSwipe_Ares",
            InheritFrom = "ThugMeleeSwipe_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyWretchAssassinRangedProjectile",
            CreateAnimation = "WretchAssassinRangedProjectileGlow",
            FilePath = "Fx\\ShadeSpike\\ShadeSpike0001",
            Type = "Constant",
            VisualFx = "ShadeBowTrail",
            Duration = 0.06,
            StartFrame = 1,
            Loop = true,
            OriginY = 90.0,
            Scale = 0.6,
            ScaleY = 0.4,
            StartScaleY = 0,
            EndScaleY = 1,
            PingPongScale = true,
            Ambient = 0.0,
            VisualFxDistanceMax = 91.0,
            VisualFxDistanceMin = 90.0,
        })


        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Zeus",
            InheritFrom = "KirbyWretchAssassinRangedProjectile",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Hera",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Poseidon",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Demeter",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Apollo",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Aphrodite",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Hephaestus",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Hestia",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "WretchAssassinRangedProjectile_Ares",
            InheritFrom = "WretchAssassinRangedProjectile_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyFuryWhipWhirl",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Fx\\FuryWhipWhirl\\FuryWhipWhirl",
            Type = "Book",
            VisualFx = "FuryWhipWhirlRandom",
            AngleFromOwner = "Ignore",
            ColorFromOwner = "Ignore",
            EndFrame = 35,
            NumFrames = 35,
            PlaySpeed = 60.0,
            StartFrame = 1,
            Scale = 2.0,
            ScaleFromOwner = "Ignore",
            Ambient = 0.0,
            VisualFxCap = 2,
            VisualFxIntervalMax = 0.12,
            VisualFxIntervalMin = 0.1,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyFuryWhipWhirlRandom",
            InheritFrom = "KirbyFuryWhipWhirl",
            CreateAnimation = "null",
            VisualFx = "null",
            AngleMax = 360.00,
            RandomPlaySpeedMax = 90.0,
            RandomPlaySpeedMin = 60.0,
            Scale = 1.5,
        })

         table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Zeus",
            InheritFrom = "KirbyFuryWhipWhirlRandom",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Hera",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Poseidon",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Demeter",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Apollo",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Aphrodite",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Hephaestus",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Hestia",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirlRandom_Ares",
            InheritFrom = "FuryWhipWhirlRandom_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Zeus",
            InheritFrom = "KirbyFuryWhipWhirl",
            VisualFx = "FuryWhipWhirlRandom_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Hera",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Poseidon",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Demeter",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Apollo",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Aphrodite",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Hephaestus",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Hestia",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryWhipWhirl_Ares",
            InheritFrom = "FuryWhipWhirl_Zeus",
            VisualFx = "FuryWhipWhirlRandom_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyFuryBeamFire",
            FilePath = "Fx\\FuryBeamFire\\FuryBeamFire",
            GroupName = "FX_Standing_Add",
            Type = "Book",
            AngleFromOwner = "Take",
            EndFrame = 38,
            NumFrames = 38,
            RandomPlaySpeedMax = 70.0,
            RandomPlaySpeedMin = 60.0,
            StartFrame = 1,
            RandomFlipVertical = true,
            LocationFromOwner = "Ignore",
            LocationZFromOwner = "Take",
            SortMode = "Id",
            Velocity = 400.0,
            ScaleMax = 1.0,
            ScaleMin = 0.8,
            ScaleX = 1.3,
            ScaleY = 0.3,
            Ambient = 0.0,
            RandomAccelerationMax = -300.0,
            RandomAccelerationMin = -700.0,
            VisualFxManagerCap = 400,
            CreateAnimations = {
                { Name = "FuryBeamFireDark" },
                { Name = "BatMaybe" },
            },
        })

         table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Zeus",
            InheritFrom = "KirbyFuryBeamFire",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Hera",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Poseidon",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Demeter",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Apollo",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Aphrodite",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Hephaestus",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Hestia",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamFire_Ares",
            InheritFrom = "FuryBeamFire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

         table.insert(data.Animations,
        {
            Name = "KirbyFuryBeamEmitter",
            FilePath = "Fx\\ProjectileFire\\ProjectileFire",
            GroupName = "FX_Standing_Add",
            Type = "Book",
            VisualFx = "FuryBeamFire",
            VisualFxManagerCap = 400,
            AngleFromOwner = "Ignore",
            AddColor = true,
            EndFrame = 60,
            Loop = true,
            NumFrames = 60,
            RandomPlaySpeedMax = 120.0,
            RandomPlaySpeedMin = 90.0,
            ReRandomizeOnLoop = false,
            StartFrame = 1,
            RandomRotation = true,
            EndScale = 0.25,
            PingPongScale = true,
            ScaleMax = 1.0,
            ScaleMin = 0.5,
            VisualFxDistanceMax = 200.0,
            VisualFxDistanceMin = 180.0,
            Sound = "/SFX/Enemy Sounds/Megaera/MegaeraRapidEnergyBlastFire",
            CreateAnimations = {
                { Name = "FuryBeamEmitterDark" },
            },
            Color = { Red = 1.0, Green = 0.0, Blue = 0.6, },
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Zeus",
            InheritFrom = "KirbyFuryBeamEmitter",
            VisualFx = "FuryBeamFire_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Hera",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Poseidon",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Demeter",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Apollo",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Aphrodite",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Hephaestus",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Hestia",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryBeamEmitter_Ares",
            InheritFrom = "FuryBeamEmitter_Zeus",
            VisualFx = "FuryBeamFire_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyFuryAlectoThrow",
            ChainTo = "FuryAlectoThrowEnd",
            CreateAnimation = "QuickFlashRedLarge",
            FilePath = "Fx\\FuryAlectoThrow\\FuryAlectoThrow",
            Type = "Book",
            VisualFx = "FuryAlectoSpikesSmaller",
            AngleFromOwner = "Ignore",
            Sound = "/SFX/Enemy Sounds/Alecto/AlectoThrowLoop",
            StopSoundOnFinishFade = 0.3,
            EndFrame = 45,
            Loop = true,
            NumFrames = 45,
            StartFrame = 1,
            ScaleRadius = 110.0,
            Ambient = 0.0,
            VisualFxIntervalMax = 0.2,
            VisualFxIntervalMin = 0.1,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyFuryAlectoSpikesSmaller",
            FilePath = "Fx\\FuryAlectoSpikes\\FuryAlectoSpikes",
            Type = "Book",
            AngleFromOwner = "Ignore",
            ColorFromOwner = "Ignore",
            RandomPlaySpeedMax = 60.0,
            RandomPlaySpeedMin = 30.0,
            RandomFlipHorizontal = true,
            RandomOffsetY = 50.0,
            LocationFromOwner = "Take",
            SortMode = "Id",
            Scale = 2.0,
            ScaleFromOwner = "Ignore",
            ScaleMax = 1.1,
            ScaleMin = 0.9,
            Ambient = 0.0,
            TimeModifierFraction = 0.003,
            AngleMax = 360.00,
            AngleMin = 0.00,
            AddColor = true,
            EndFrame = 16,
            NumFrames = 11,
            StartFrame = 6,
            RandomOffsetX = 150.0,
            RandomOffsetY = 75.0,
            PostRotateScaleY = 0.5,
            Scale = 0.6,
            Color = { Red = 1.0, Green = 0.0, Blue = 0.0, },
        })

         table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Zeus",
            InheritFrom = "KirbyFuryAlectoSpikesSmaller",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Hera",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Poseidon",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Demeter",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Apollo",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Aphrodite",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Hephaestus",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Hestia",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoSpikesSmaller_Ares",
            InheritFrom = "FuryAlectoSpikesSmaller_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

         table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Zeus",
            InheritFrom = "KirbyFuryAlectoThrow",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Hera",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Poseidon",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Demeter",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Apollo",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Aphrodite",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Hephaestus",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Hestia",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryAlectoThrow_Ares",
            InheritFrom = "FuryAlectoThrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })
        
        
        table.insert(data.Animations,
        {
            Name = "KirbyFuryHellfire",
            FilePath = "Fx\\FuryHellfire\\FuryHellfire",
            GroupName = "Standing",
            Type = "Book",
            VisualFx = "FuryHellfireParticles",
            AngleFromOwner = "Ignore",
            Sound = "/SFX/Enemy Sounds/Megaera/MegaeraFlameBurst",
            ColorFromOwner = "Ignore",
            EndFrame = 52,
            NumFrames = 52,
            RandomPlaySpeedMax = 75.0,
            RandomPlaySpeedMin = 45.0,
            StartFrame = 1,
            RandomFlipHorizontal = true,
            OriginX = 240.0,
            OriginY = 510.0,
            SortMode = "Id",
            ScaleFromOwner = "Ignore",
            ScaleMax = 1.1,
            ScaleMin = 0.9,
            Ambient = 0.0,
            VisualFxCap = 12,
            VisualFxIntervalMax = 0.1,
            VisualFxIntervalMin = 0.02,
            VisualFx = "null",
            AddColor = true,
            EndBlue = 0.2,
            EndGreen = 0.8,
            StartBlue = 0.8,
            StartGreen = 1.0,
            StartRed = 0.2,
            EaseIn = 0.5,
            EaseOut = 0.6,
            EndScaleX = 0.2,
            EndScaleY = 1.5,
            StartScaleX = 0.6,
            Hue = 0.5,
            CreateAnimations = {
                { Name = "QuickFlashGreenLarge" },
                { Name = "RadialNovaTisiphone" },
                { Name = "FuryDustRingFrontTisiphone" },
                { Name = "FuryDustRingBackTisiphone" },
                { Name = "FuryTisiphoneGhosts" },
                { Name = "RadialNovaEnemyDark" },
                { Name = "BatMaybeGhost" },
            },
        })
        
        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Zeus",
            InheritFrom = "KirbyFuryHellfire",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Hera",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Poseidon",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Demeter",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Apollo",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Aphrodite",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Hephaestus",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Hestia",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "FuryHellfire_Ares",
            InheritFrom = "FuryHellfire_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })
        
        table.insert(data.Animations,
        {
            Name = "KirbyHydraTouchdownFx",
            FilePath = "Fx\\HydraTouchdown\\HydraTouchdown",
            GroupName = "FX_Terrain",
            Type = "Slide",
            AngleFromOwner = "Ignore",
            EndFrame = 65,
            NumFrames = 65,
            StartFrame = 1,
            RandomFlipHorizontal = true,
            ScaleRadius = 280.0,
            Ambient = 0.0,
            UseAttachedFlasher = false,
            UseAttachedShake = false,
            CreateAnimations = {
                { Name = "HydraTouchdownImpactFx" },
                { Name = "HydraTouchdownImpactFxDark" },
                { Name = "HydraTouchdownGroundCracks" },
                { Name = "QuickFlashEnemy" },
            },
            Slides = {

                { DurationFrames = 1 },
                --/*Frame 1*/
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                { DurationFrames = 1 },
                --/*Frame 10*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                --/*Frame 20*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                --/*Frame 30*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                --/*Frame 40*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                --/*Frame 50*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                --/*Frame 60*/

                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
                { DurationFrames = 2 },
            },
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Zeus",
            InheritFrom = "KirbyHydraTouchdownFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Hera",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Poseidon",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Demeter",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Apollo",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Aphrodite",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Hephaestus",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Hestia",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "HydraTouchdownFx_Ares",
            InheritFrom = "HydraTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbyCrusherTouchdownFx",
        InheritFrom = "KirbyHydraTouchdownFx",
        LocationZFromOwner = "Ignore",
        ClearCreateAnimations = true,
        ColorFromOwner = "Ignore",
        CreateAnimations = {
            { Name = "CrusherCrater" },
            { Name = "HydraTouchdownImpactFx" },
            { Name = "HydraTouchdownImpactFxDark" },
            { Name = "QuickFlashEnemy" },
        },
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Zeus",
            InheritFrom = "KirbyCrusherTouchdownFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Hera",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Poseidon",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Demeter",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Apollo",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Aphrodite",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Hephaestus",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Hestia",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "CrusherTouchdownFx_Ares",
            InheritFrom = "CrusherTouchdownFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbyShadeSpikeSpear",
        ChainTo = "ShadeSpikeSpearDissipate",
        CreateAnimation = "QuickFlashEnemy",
        FilePath = "Fx\\ShadeSpike\\ShadeSpike",
        GroupName = "FX_Standing_Add",
        Type = "Book",
        VisualFx = "ShadeEphemeraB",
        EaseIn = 0.9,
        EaseOut = 1.0,
        EndFrame = 22,
        Loop = true,
        NumFrames = 60,
        PlaySpeed = 60.0,
        StartFrame = 1,
        OriginX = 180.0,
        OriginY = 90.0,
        LocationZFromOwner = "Take",
        SortMode = "FromParent",
        TransferChildren = true,
        EndScaleY = 0.25,
        ScaleFromOwner = "Ignore",
        Ambient = 0.0,
        VisualFxDistanceMax = 60.0,
        VisualFxDistanceMin = 50.0,
        OverlayVfx = true,
        TimeModifierFraction = 0.75,
        CreateAnimations = {
            { Name = "ShadeSpikeSpearTrail" },
            { Name = "ShadeSpikeSpearTrailDark" },
        },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Zeus",
            InheritFrom = "KirbyShadeSpikeSpear",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Hera",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Poseidon",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Demeter",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Apollo",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Aphrodite",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Hephaestus",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Hestia",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeSpear_Ares",
            InheritFrom = "ShadeSpikeSpear_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbyShadeSpikeVertical",
        FilePath = "Fx\\ShadeSpike\\ShadeSpike",
        Type = "Book",
        EndFrame = 22,
        NumFrames = 22,
        PlaySpeed = 60.0,
        StartFrame = 1,
        OriginX = 60.0,
        OriginY = 90.0,
        ScaleFromOwner = "Ignore",
        Ambient = 0.0,
        GroupName = "Standing",
        VisualFx = "ShadeSpikeVerticalParticles",
        AngleFromOwner = "Ignore",
        AngleMax = 120.00,
        AngleMin = 60.00,
        EaseIn = 0.9,
        EaseOut = 1.0,
        RandomPlaySpeedMax = 70.0,
        RandomPlaySpeedMin = 30.0,
        EndOffsetY = -50.0,
        StartOffsetY = 5.0,
        LocationFromOwner = "Ignore",
        Scale = 0.5,
        ScaleMax = 1.0,
        ScaleMin = 0.2,
        ScaleX = 1.5,
        ScaleY = 0.66,
        VisualFxCap = 3,
        VisualFxIntervalMax = 1.0,
        VisualFxIntervalMin = 0.1,
        CancelOverCap = true,
        CreateAnimations = {
            { Name = "ShadeGroundCrack" },
            { Name = "QuickFlashEnemySmall" },
            { Name = "ShadeEphemera" },
        },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Zeus",
            InheritFrom = "KirbyShadeSpikeVertical",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Hera",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Poseidon",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Demeter",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Apollo",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Aphrodite",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Hephaestus",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Hestia",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSpikeVertical_Ares",
            InheritFrom = "ShadeSpikeVertical_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbyShadeSwordOverheadProjectileFx",
        FilePath = "Fx\\ShadeSpike\\ShadeSpike",
        Type = "Book",
        AngleFromOwner = "Take",
        EndFrame = 22,
        NumFrames = 22,
        PlaySpeed = 60.0,
        StartFrame = 1,
        OriginY = 90.0,
        ScaleFromOwner = "Ignore",
        Ambient = 0.0,
        VisualFx = "ShadeSpikeVertical",
        ActiveVisualFxCap = 40,
        AngleFromOwner = "Maintain",
        Sound = "/SFX/Enemy Sounds/BloodlessWaveAmbienceLoop",
        StopSoundOnFinishFade = 0.25,
        EaseIn = 0.9,
        EaseOut = 1.0,
        Loop = true,
        PlaySpeed = 120.0,
        OriginX = 220.0,
        PostRotateScaleY = 0.5,
        ScaleX = 0.5,
        ScaleY = 0.5,
        VisualFxDistanceMax = 60.0,
        VisualFxDistanceMin = 30.0,
        Color = { Red = 0.0, Green = 0.0, Blue = 0.0, },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Zeus",
            InheritFrom = "KirbyShadeSwordOverheadProjectileFx",
            VisualFx = "ShadeSpikeVertical_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Hera",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Poseidon",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Demeter",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Apollo",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Aphrodite",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Hephaestus",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Hestia",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeSwordOverheadProjectileFx_Ares",
            InheritFrom = "ShadeSwordOverheadProjectileFx_Zeus",
            VisualFx = "ShadeSpikeVertical_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyShadeHunkerDownProjectileFx",
            Type = "Constant",
            FilePath = "Particles\\particle_glow",
            CreateAnimation = "QuickFlashEnemy",
            GroupName = "FX_Standing_Add",
            VisualFx = "WaveFistTrailShade",
            Sound = "/SFX/Enemy Sounds/BloodlessWaveAmbienceLoop",
            StopSoundOnFinishFade = 0.25,
            Alpha = 0.35,
            EndFrame = 1,
            Loop = true,
            NumFrames = 1,
            StartFrame = 1,
            Ambient = 0.0,
            VisualFxDistanceMax = 50.0,
            VisualFxDistanceMin = 40.0,
            OverlayVfx = true,
            ActiveVisualFxCap = 40,
            PingPongShiftOverDuration = true,
            --CreateAnimations = {
            --    { Name = "ShadeSpikeVertical" },
            --}
            --Color = { Red = 1.0, Green = 0.0, Blue = 0.50, },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Zeus",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Zeus" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Hera",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Hera" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Poseidon",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Poseidon" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Demeter",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Demeter" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Apollo",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Apollo" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Aphrodite",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Aphrodite" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Hephaestus",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Hephaestus" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Hestia",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Hestia" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "ShadeHunkerDownProjectileFx_Ares",
            InheritFrom = "KirbyShadeHunkerDownProjectileFx",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
            CreateAnimations = {
                { Name = "ShadeSpikeVertical_Ares" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "KirbyShadeBowArrow",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Fx\\ShadeSpike\\ShadeSpike",
            Type = "Book",
            VisualFx = "ShadeBowTrail",
            Duration = 0.5,
            EndFrame = 21,
            HoldLastFrame = true,
            NumFrames = 21,
            StartFrame = 1,
            OriginY = 90.0,
            Scale = 0.6,
            ScaleY = 0.4,
            Ambient = 0.0,
            VisualFxDistanceMax = 91.0,
            VisualFxDistanceMin = 90.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Zeus",
            InheritFrom = "KirbyShadeBowArrow",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Hera",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Poseidon",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Demeter",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Apollo",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Aphrodite",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Hephaestus",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Hestia",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "ShadeBowArrow_Ares",
            InheritFrom = "ShadeBowArrow_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbySoulSpawnerButterfly",
        Type = "Book",
        FilePath = "Animations\\SoulSpawner\\SoulSpawnerButterfly\\SoulSpawnerButterfly",
        NumFrames = 6,
        NumAngles = 32,
        Material = "Unlit",
        RandomPlaySpeedMin = 30,
        RandomPlaySpeedMax = 36,
        ScaleMin = 0.8,
        ScaleMax = 1.0,
        Loop = true,
        RandomStartFrame = false,
        ReRandomizeOnLoop = true,
        PingPongShiftOverDuration = true,
        DieWithOwner = true,
        LocationZFromOwner = "Maintain",
        UseParentOffset = true,
        LoopFramesOnly = true,
        RandomDurationMin = 0.25,
        RandomDurationMax = 0.6,
        StartOffsetZ = 15,
        EndOffsetZ = -15,
        Hue = 0,
        AddColor = true,
        StartRed = 0,
        StartGreen = 0,
        StartBlue = 0,
        EndRed = 0.1,
        EndGreen = 0.2,
        EndBlue = 0.3,
        EaseIn=0.9,
        EaseOut=1.0,
        PingPongColor = true,
        VisualFxIntervalMin=0.5,
        VisualFxIntervalMax=1.0,
        VisualFx = "SoulSpawnerButterlyTrail",
		VisualFxManagerCap = 400,
    })

    table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Zeus",
            InheritFrom = "KirbySoulSpawnerButterfly",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Hera",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Poseidon",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Demeter",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Apollo",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Aphrodite",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Hephaestus",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Hestia",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "SoulSpawnerButterfly_Ares",
            InheritFrom = "SoulSpawnerButterfly_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyEnemyConeAttackChariotRam",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Fx\\EnemyConeAttack\\EnemyConeAttack",
            Type = "Book",
            EndFrame = 26,
            NumFrames = 26,
            PlaySpeed = 60.0,
            StartFrame = 1,
            LocationFromOwner = "Ignore",
            PostRotateScaleY = 0.5,
            Ambient = 0.0,
            SortMode = "FromParent",
            GroupName = "FX_Terrain",
            SortMode = "Secondary",
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Zeus",
            InheritFrom = "KirbyEnemyConeAttackChariotRam",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Hera",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Poseidon",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Demeter",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Apollo",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Aphrodite",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Hephaestus",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Hestia",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyConeAttackChariotRam_Ares",
            InheritFrom = "EnemyConeAttackChariotRam_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyEnemyProjectileMultiBreak",
            FilePath = "Fx\\EnemyProjectileMultiBreak\\EnemyProjectileMultiBreak",
            GroupName = "Standing",
            Type = "Book",
            EndFrame = 6,
            NumFrames = 6,
            PlaySpeed = 30.0,
            StartFrame = 1,
            OffsetZ = 30.0,
            SortMode = "FromParent",
            Ambient = 0.0,
            OverlayVfx = true,
            Sound = "/Leftovers/SFX/PlayerProjectile",
            CreateAnimations = {
                { Name = "EnemyProjectileMultiBreakFlare" },
                { Name = "QuickFlashEnemy" },
            }
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Zeus",
            InheritFrom = "KirbyEnemyProjectileMultiBreak",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Hera",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Poseidon",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Demeter",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Apollo",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Aphrodite",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Hephaestus",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Hestia",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMultiBreak_Ares",
            InheritFrom = "EnemyProjectileMultiBreak_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })


        table.insert(data.Animations,
        {
            Name = "KirbyEnemyProjectileMulti",
            CreateAnimation = "EnemyProjectileGlow",
            FilePath = "Fx\\EnemyProjectileMulti\\EnemyProjectileMulti",
            Type = "Book",
            VisualFx = "DisplaceHeatTrail",
            VisualFxManagerCap = 400,
            AngleFromOwner = "Ignore",
            Sound = "/SFX/Enemy Sounds/EnemyProjectileAmbientBig",
            StopSoundOnFinishFade = 0.25,
            EndFrame = 60,
            Loop = true,
            NumFrames = 60,
            RandomPlaySpeedMax = 60.0,
            RandomPlaySpeedMin = 45.0,
            StartFrame = 1,
            RandomFlipHorizontal = true,
            OffsetZ = 60.0,
            Scale = 0.75,
            Ambient = 0.0,
            VisualFxIntervalMax = 0.21,
            VisualFxIntervalMin = 0.2,
            OverlayVfx = true,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Zeus",
            InheritFrom = "KirbyEnemyProjectileMulti",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Hera",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Poseidon",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Demeter",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Apollo",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Aphrodite",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Hephaestus",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Hestia",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "EnemyProjectileMulti_Ares",
            InheritFrom = "EnemyProjectileMulti_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })
        
        table.insert(data.Animations,
        {
            Name = "KirbyMinotaurShockwaveTrail",
            FilePath = "Fx\\EnemyWaveFist\\EnemyWaveFist",
            GroupName = "FX_Terrain",
            Type = "Book",
            EaseIn = 0.95,
            EaseOut = 1.0,
            EndFrame = 24,
            NumFrames = 24,
            RandomPlaySpeedMax = 60.0,
            RandomPlaySpeedMin = 50.0,
            StartFrame = 1,
            RandomFlipVertical = true,
            LocationFromOwner = "Ignore",
            LocationZFromOwner = "Ignore",
            EndScaleY = 0.75,
            PostRotateScaleY = 0.5,
            Scale = 1.5,
            ScaleFromOwner = "Ignore",
            StartScaleY = 0.5,
            Ambient = 0.0,
            CreateAnimations = {
                { Name = "MinotaurShockwaveSpike" },
                { Name = "DustPuffWaveFist" },
                { Name = "RubbleFallImpactDebrisWaveFist" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Zeus",
            InheritFrom = "KirbyMinotaurShockwaveTrail",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Hera",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Poseidon",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Demeter",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Apollo",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Aphrodite",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Hephaestus",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Hestia",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveTrail_Ares",
            InheritFrom = "MinotaurShockwaveTrail_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbyMinotaurShockwaveFx",
            CreateAnimation = "QuickFlashEnemy",
            FilePath = "Particles\\particle_quickflash",
            GroupName = "FX_Standing_Add",
            Type = "Constant",
            Sound = "/SFX/Enemy Sounds/BloodlessWaveAmbienceLoop",
            StopSoundOnFinishFade = 0.2,
            Alpha = 0.5,
            EndFrame = 1,
            Loop = true,
            NumFrames = 1,
            StartFrame = 1,
            PostRotateScaleY = 0.5,
            Scale = 0.5,
            ScaleX = 2.0,
            ScaleY = 0.5,
            Ambient = 0.0,
            ActiveVisualFxCap = 100,
            VisualFxDistanceMax = 50.0,
            VisualFxDistanceMin = 40.0,
            OverlayVfx = true,
            PingPongShiftOverDuration = true,
            CreateAnimations = {
                { Name = "WaveFistInitSpike" },
            },
            Color = { Red = 1.0, Green = 0.0, Blue = 0.50, },
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Zeus",
            InheritFrom = "KirbyMinotaurShockwaveFx",
            VisualFx = "MinotaurShockwaveTrail_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Hera",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Poseidon",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Demeter",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Apollo",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Aphrodite",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Hephaestus",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Hestia",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "MinotaurShockwaveFx_Ares",
            InheritFrom = "MinotaurShockwaveFx_Zeus",
            VisualFx = "MinotaurShockwaveTrail_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbySpearThrowParticles_Theseus",
            FilePath = "Particles\\particle_addFlake2",
            GroupName = "FX_Standing_Add",
            Type = "Constant",
            AngleFromOwner = "Take",
            AngleMax = 2.00,
            AngleMin = -2.00,
            EndRed = 1.0,
            StartBlue = 0.01,
            StartGreen = 0.5,
            StartRed = 1.0,
            EaseIn = 0.5,
            EaseOut = 1.0,
            EndFrame = 1,
            NumFrames = 1,
            RandomDurationMax = 1.0,
            RandomDurationMin = 0.9,
            StartFrame = 1,
            OffsetZ = 0.0,
            OriginX = 68.0,
            OriginY = 62.0,
            RadialOffsetMax = 150.0,
            RandomOffsetX = 2.0,
            RandomOffsetY = 1.0,
            LocationFromOwner = "Take",
            LocationZFromOwner = "Ignore",
            SortMode = "FromParent",
            Acceleration = -1000.0,
            VelocityMax = 500.0,
            VelocityMin = 300.0,
            EndScale = 0.0,
            EndScaleX = 1.0,
            Scale = 0.76,
            StartScale = 0.25,
            StartScaleX = 16.0,
            Ambient = 0.0,
            OverlayVfx = true,
            TimeModifierFraction = 0.75,
            EndBlue = 0.2,
            EndRed = 0.999,
            StartBlue = 0.5,
            StartGreen = 0.1,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowParticles_Theseus_Hera",
            InheritFrom = "KirbySpearThrowParticles_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowParticles_Theseus_Apollo",
            InheritFrom = "KirbySpearThrowParticles_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowParticles_Theseus_Hephaestus",
            InheritFrom = "KirbySpearThrowParticles_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowParticles_Theseus_Hestia",
            InheritFrom = "KirbySpearThrowParticles_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "KirbySpearThrowProjectile_Theseus",
            CreateAnimation = "SpearThrowProjectileGlow_Theseus",
            FilePath = "Fx\\WeaponSwipePointed\\WeaponSwipePointed",
            Type = "Book",
            VisualFx = "SpearThrowParticles_Theseus",
            AddColor = true,
            Alpha = 0.0,
            EndGreen = 0.3,
            EndRed = 1.0,
            StartBlue = 0.6,
            StartGreen = 0.1,
            StartRed = 1.0,
            EndBlue = 0.2,
            EndGreen = 0.0,
            EndRed = 0.999,
            EndFrame = 8,
            HoldLastFrame = true,
            NumFrames = 8,
            PlaySpeed = 30.0,
            StartFrame = 1,
            OriginX = 580.0,
            OriginY = 58.0,
            StartScale = 0.65,
            Ambient = 0.0,
            ActiveVisualFxCap = 50,
            VisualFxDistanceMax = 30.0,
            VisualFxDistanceMin = 20.0,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowProjectile_TheseusHera",
            InheritFrom = "KirbySpearThrowProjectile_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowProjectile_TheseusApollo",
            InheritFrom = "KirbySpearThrowProjectile_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowProjectile_TheseusHephaestus",
            InheritFrom = "KirbySpearThrowProjectile_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "SpearThrowProjectile_TheseusHestia",
            InheritFrom = "KirbySpearThrowProjectile_Theseus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "KirbyTheseusSpearSwipe",
        FilePath = "Fx\\SpearSwipe\\SpearSwipe",
        Type = "Book",
        AngleChangeAcceleration = -150.00,
        EndFrame = 28,
        NumFrames = 28,
        PlaySpeed = 90.0,
        StartFrame = 1,
        FlipHorizontal = true,
        RotationSpeed = 90.00,
        PostRotateScaleY = 0.6,
        Scale = 2.1,
        ScaleFromOwner = "Ignore",
        Ambient = 0.0,
        CreateAnimations = {
            { Name = "TheseusSpearSwipeAdd" },
            { Name = "TheseusSpearSwipeDark" },
            { Name = "QuickFlashEnemy" },
        },
        Color = { Red = 1.0, Green = 0.0, Blue = 0.4, },
        })

        table.insert(data.Animations,
        {
            Name = "TheseusSpearSwipeHera",
            InheritFrom = "KirbyTheseusSpearSwipe",
            VisualFx = "SpearThrowParticles_Theseus_Hera",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "TheseusSpearSwipeApollo",
            InheritFrom = "KirbyTheseusSpearSwipe",
            VisualFx = "SpearThrowParticles_Theseus_Apollo",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "TheseusSpearSwipeHephaestus",
            InheritFrom = "KirbyTheseusSpearSwipe",
            VisualFx = "SpearThrowParticles_Theseus_Hephaestus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "TheseusSpearSwipeHestia",
            InheritFrom = "KirbyTheseusSpearSwipe",
            VisualFx = "SpearThrowParticles_Theseus_Hestia",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Zeus",
            InheritFrom = "PoisonPoolSmallLoop",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Hera",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Poseidon",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Demeter",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Apollo",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Aphrodite",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Hephaestus",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Hestia",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Ares",
            InheritFrom = "PoisonPoolSmallLoop_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Zeus",
            InheritFrom = "PoisonPoolSmallIn",
            ChainTo = "PoisonPoolSmallLoop_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Hera",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Poseidon",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Demeter",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Apollo",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Aphrodite",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Hephaestus",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Hestia",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Ares",
            InheritFrom = "PoisonPoolSmallIn_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Zeus",
            InheritFrom = "PoisonPoolSmallLoop_Flipped",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Hera",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Poseidon",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Demeter",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Apollo",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Aphrodite",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Hephaestus",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Hestia",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallLoop_Flipped_Ares",
            InheritFrom = "PoisonPoolSmallLoop_Flipped_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Zeus",
            InheritFrom = "PoisonPoolSmallIn_Flipped",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Zeus",
            Color = {},
            ColorFromOwner = "Ignore",
            AddColor = true,
            StartRed = 1.0,
            StartGreen = 0.95,
            StartBlue = 0.7,
            EndRed = 0.9999,
            EndGreen = 0.8,
            EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Hera",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Hera",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Poseidon",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Poseidon",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Demeter",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Demeter",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Apollo",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Apollo",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Aphrodite",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Aphrodite",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Hephaestus",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Hephaestus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Hestia",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Hestia",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmallIn_Flipped_Ares",
            InheritFrom = "PoisonPoolSmallIn_Flipped_Zeus",
            ChainTo = "PoisonPoolSmallLoop_Flipped_Ares",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Zeus",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Zeus" },
                { Name = "PoisonPoolSmallIn_Flipped_Zeus" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Hera",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Hera" },
                { Name = "PoisonPoolSmallIn_Flipped_Hera" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Poseidon",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Poseidon" },
                { Name = "PoisonPoolSmallIn_Flipped_Poseidon" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Demeter",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Demeter" },
                { Name = "PoisonPoolSmallIn_Flipped_Demeter" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Apollo",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Apollo" },
                { Name = "PoisonPoolSmallIn_Flipped_Apollo" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Aphrodite",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Aphrodite" },
                { Name = "PoisonPoolSmallIn_Flipped_Aphrodite" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Hephaestus",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Hephaestus" },
                { Name = "PoisonPoolSmallIn_Flipped_Hephaestus" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Hestia",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Hestia" },
                { Name = "PoisonPoolSmallIn_Flipped_Hestia" },
            },
        })

        table.insert(data.Animations,
        {
            Name = "PoisonPoolSmall_Ares",
            InheritFrom = "PoisonPoolSmall",
            ClearCreateAnimations = true,
            Random = {
                { Name = "PoisonPoolSmallIn_Ares" },
                { Name = "PoisonPoolSmallIn_Flipped_Ares" },
            },
        })

        table.insert(data.Animations,
        {
        Name = "CharonArcRight_Zeus",
        InheritFrom = "CharonArcRight",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Hera",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Poseidon",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Demeter",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Apollo",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Aphrodite",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Hephaestus",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Hestia",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonArcRight_Ares",
            InheritFrom = "CharonArcRight_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
        Name = "CharonWaveFx_Zeus",
        InheritFrom = "CharonWaveFx",
        ColorFromOwner = "Ignore",
        Color = {},
        AddColor = true,
        StartRed = 1.0,
        StartGreen = 0.95,
        StartBlue = 0.7,
        EndRed = 0.9999,
        EndGreen = 0.8,
        EndBlue = 0.5,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Hera",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 0.0,
            StartGreen = 1.0,
            StartBlue = 0.1,
            EndRed = 0.1,
            EndGreen = 0.3,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Poseidon",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 0.1,
            StartGreen = 1.0,
            StartBlue = 0.8,
            EndRed = 0,
            EndGreen = 0.6,
            EndBlue = 1.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Demeter",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 0.25,
            StartGreen = 0.35,
            StartBlue = 0.5,
            EndRed = 0.35,
            EndGreen = 0.25,
            EndBlue = 0.4999,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Apollo",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.9,
            StartBlue = 0.7,
            EndRed = 0.999,
            EndGreen = 0.85,
            EndBlue = 0.05,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Aphrodite",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.6,
            StartBlue = 0.8,
            EndRed = 0.99,
            EndGreen = 0.05,
            EndBlue = 0.99,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Hephaestus",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 0.51,
            StartGreen = 0.82,
            StartBlue = 1.00,
            EndRed = 1.00,
            EndGreen = 0,
            EndBlue = 0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Hestia",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.3,
            StartBlue = 0.02,
            EndRed = 0.999,
            EndGreen = 0.15,
            EndBlue = 0.0,
        })

        table.insert(data.Animations,
        {
            Name = "CharonWaveFx_Ares",
            InheritFrom = "CharonWaveFx_Zeus",
            StartRed = 1.0,
            StartGreen = 0.04,
            StartBlue = 0.001,
            EndRed = 0.999,
            EndGreen = 0.0,
            EndBlue = 0.0,
        })

    end

return data
end)