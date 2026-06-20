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

return data
end)