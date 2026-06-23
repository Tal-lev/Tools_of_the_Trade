local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Lob_VFX.sjson')
sjson.hook(file, function(data)

    table.insert(data.Animations,
    {
        Name = "GuardMeleeAoE_Zeus",
        InheritFrom = "GuardMeleeAoE",
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
        Name = "TurtleLobProjectile_Zeus",
        InheritFrom = "TurtleLobProjectile",
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
    Name = "RadiatorBeamLongRange_Zeus",
    InheritFrom = "RadiatorBeamLongRange",
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
    Name = "SirenDrummerCircleNova_Zeus",
    InheritFrom = "SirenDrummerCircleNova",
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
    Name = "CorruptedShadeProjectileDissipate_Zeus",
    InheritFrom = "CorruptedShadeProjectileDissipate",
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
    Name = "FogEmitterSweepArc_Zeus",
    InheritFrom = "FogEmitterSweepArc",
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
    Name = "ScreamerConeFxLarge_Zeus",
    InheritFrom = "ScreamerConeFxLarge",
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
    Name = "LamiaSkyCast_Zeus",
    InheritFrom = "LamiaSkyCast",
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
        Name = "GoldElementalBeam_Zeus",
        InheritFrom = "GoldElementalBeam",
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
        Name = "TimeElementalProjectile_Zeus",
        InheritFrom = "TimeElementalProjectile",
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
        Name = "ChronosScytheThrowFx2_Zeus",
        InheritFrom = "ChronosScytheThrowFx2",
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

return data
end)