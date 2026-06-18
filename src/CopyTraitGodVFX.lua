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
return data
end)