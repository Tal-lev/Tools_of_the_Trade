local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Lob_VFX.sjson')
sjson.hook(file, function(data)

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

return data
end)