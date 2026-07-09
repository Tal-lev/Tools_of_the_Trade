# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- 4 implemented enemies for copy
  - Treant
  - ThiefMineLayer
  - Lovesick
  - Treant2
- 50 Implemented ZJ copy abilities.
  - HadesSwarmer
  - LightSpawner
  - PunchingBagUnit
  - HadesLightRanged
  - HeavyMelee
  - DisembodiedHand
  - HeavyRanged
  - HeavyRangedSplitterMiniboss
  - WretchAssassinMiniboss
  - Harpy
  - Harpy2
  - Harpy3
  - BloodlessNaked
  - BloodlessGrenadier
  - BloodlessSelfDestruct
  - BloodlessPitcher
  - BloodlessWaveFist
  - SpreadShotUnit
  - RangedBurrower
  - CrusherUnit
  - FreezeShotUnit
  - HitandRunUnit
  - SpreadShotUnitMiniboss
  - HydraHeadDartmaker
  - HydraHeadLavamaker
  - HydraHeadWavemaker
  - HydraHeadSummoner
  - HydraHeadSlammer
  - ShadeNaked
  - ShadeSpearUnit
  - ShadeSwordUnit
  - ShadeShieldUnit
  - ShadeBowUnit
  - FlurrySpawner
  - ChariotSuicide
  - Chariot
  - SplitShotUnit
  - Minotaur
    - Cresent Strike
  - Theseus
    - Spear Throw
  - SatyrRanged
  - RatThug
  - HadesCrawler
  - HeavyRangedForked
  - SatyrRangedMiniboss
  - RatThugMiniboss
  - HadesCrawlerMiniBoss
  - HeavyRangedForkedMiniboss
  - Hades
    - Cast
    - Urn
  - Charon
    - Oar Swipe
    - Wave
- 3 Implemented Boss Copy
  - Chronos - Time Stasis
  - Zagreus - Spear Spin
  - Eris - Laser
- 4 Minor Prophecies added
  - Clear with both tools
  - Get the 8 new hammers
  - Get All Copy Abilities in Underworld route
  - Get All Copy Abilities in Surface route
- 1 new Hammer
  - Mirror Blast
- 1 Cosmetic
- Balance Changes
  - KirbyMel Max Ammo to 20 -> 10
  - Mage-copy
    - projectiles 1 -> 3
    - cooldown 0.1s -> 1.2s
    - ClipSize removed
  - Explosive Reflection Hammer damage +100% -> 50%

## [0.3.1] - 2026-07-01

- Added Biome damage for copy abilities
  - Tartarus 90%
  - Ocean of Sorrows 70%
  - Mount Olympus 60%
  - The Summit 60%
- 10 Implemented enemies for copy.
  - Lycanthrope
  - SatyrRatCatcher_Miniboss
  - Zagreus
    - Blood Cast
  - Zombie
  - ZombieCrewman
  - ZombieOlympus
  - CharybdisTentacle
  - EarthElemental
  - Stalker_Miniboss
  - TyphonEye
- Added Icons for KirbyMel Hammers

## [0.3.0] - 2026-06-30

- 40 Implemented enemies for copy.
  - Wisp
  - Carrion
  - ZombieHeavyRanged
  - ZombieAssassin
  - ZombieAssassin_Miniboss
  - Mudman
  - MudmanEye
  - ZombieSpawner
  - Boar
  - SatyrCrossbow
  - Sheep_Zombie
  - Sheep_Explosive
  - Polyphemus
  - Scimiterror
  - Stickler
  - Swab
  - Drunk
  - HarpyCutter
  - WaterElemental
  - Mage2
  - Captain
  - Eris
    - Sniper-shot
  - SentryBot
  - AutomatonBeamer
  - AutomatonEnforcer
  - HarpyDropper
  - SatyrCrossbow2
  - SatyrLancer2
  - SatyrSapper
  - Talos
  - Heracles
  - Prometheus
  - Simple
  - Stalker
  - Brute
  - Mati
  - DragonBurrower
  - Brute_Miniboss
  - TyphonTail
  - Typhon
    - Tongue-Lash

## [0.2.1] - 2026-06-24

- Fix: Added tracking for the packages used in owned copies and loading them at setupmap
- 12 Implemented enemies.
  - LightRanged
  - FishSwarmer
  - Octofish
  - CrawlerMiniboss
  - WaterUnitMiniboss
  - CorruptedShadeLarge
  - LycanSwarmer
  - SwarmerClockwork
  - ClockworkHeavyMelee
  - Crawler
  - SatyrCultist
  - GoldElemental_MiniBoss

## [0.2.0] - 2026-06-23

- Adds The Tablet of Peace (AKA KirbyMel) Still experimental
  - Adds into the shop
  - Your Attack copies the enemy's weapon.
  - Your Omega Attack creates a nova that replaces the current copy ability with the reserve copy ability
  - Trait Increase Omega Attack damage.
  - Adding three new hammers
    - Extended Reflection
    - Permenant Reflection
    - Explosive Reflection
  - 34 Implemented enemies.
    - Guard
    - Brawler
    - Mage
    - SiegeVine
    - Radiator
    - Screamer
    - TrantTail
    - FogEmitter
    - Hecate
      - Torch-cones
    - Guard2
    - FishmanMelee
    - FishmanRanged
    - Turtle
    - WaterUnit
    - Radiator2
    - Jellyfish
    - SirenDrummer
    - SirenKeytarist
    - Scylla
      - Notes
    - CorruptedShadeSmall
    - CorruptedShadeMedium
    - FogEmitter2
    - BrokenHearted
    - Screamer2
    - TreantTail2
    - Lamia
    - Lamia2
    - Vampire
    - InfestedCerberus
    - GoldElemental
    - TimeElemental
    - SatyrLancer
    - SatyrRatCatcher
    - Chronos
      - Scythe-Throw

  

## [0.1.3] - 2026-06-16

- Adds Blood Pact Hammer
- Modify aspect text to use the reserehealth keyword
- Balance: Added progressing summoning cost, Health increases per 100 max health
- Balance: Omega attack summon cost reduced from x5 to x4
- Fix: Ares's Blood Spree not impacted by Vow of Scars
- Dev: Added CurrentlyReserved counter to ensure no health is gained/lost upon leaving rooms


## [0.1.2] - 2026-06-15

- Fix: Summoning doesn't reserve health

## [0.1.1] - 2026-06-15

- These Boons now impact your attack summons
  - Ares - Mutual Destruction
  - Ares - Grievous Blow
- These SharedKeepsakePort Keepsakes now impact your attack summons
  - Shattered Shackle
  - Pierced Butterfly
  - Skull Earring
- These Arcana now impact your attack summons
  - The Sorceress
- Fix: Omega summons don't release full health when leaving room

## [0.1.0] - 2026-06-14

- Added god textures
  - SentryBot
  - Automaton Beamer
- Added Icons for Shovel Hammers and Aspect
- These boons now impact your attack summons
  - Zeus - Arc Flash
  - Apollo - Exceptional Talent
  - Aphrodite - Wispy Wiles
  - Ares - Profuse Bleeding
- These Keepsakes now impact your attack summons
  - Evil Eye
- These Flip the Arcana now impact your attack summons
  - Bloodlust
  - Performance
  - Retribution
  - The Cyclops
  - The Strategist
  - Beauty
  - Famine

## [0.0.8] - 2026-06-13

- Ares Attack boon now applies Ares status and base damage
- These boons now impact your attack summons
  - Apollo - Extra Dose
  - Aphrodite - Secret Crush
  - Aphrodite - Sweet Surrender
  - Hephaestus - Molten Touch
  - Hephaestus - Heavy Metal
  - Hephaestus - Martial Art
  - Hestia - Slow cooker
  - Artemis - Lethal Snare
- These Arcana now impact your attack summons
  - The Furies
  - Origination
  - Strength (Only adding outgoing damage not reducing summon damage)
- Added a new Hammer
  - Scrap Metal
- Fix: Summoning without enough health count for reserve amount

## [0.0.7] - 2026-06-11

- Tweaked summon AI
- Omega attack now summons a Mourner instead of axe spin
- Added Mourner god textures
- These boons now impact your attack summons
  - Demeter - Weed Killer
  - Hermes - Racing Thoughts
  - Chaos - Chant Blessing
  - Icarus - Explosive Intent
  - Circe - Turning to a Simple Form
- These Keepsakes now impact your attack summons
  - Discordant Bell
  - White Antler
  - Lion Fang
  - Blackened Fleece
- These Arcana now impact your attack summons
  - The Huntress

## [0.0.6] - 2026-06-09

- Fix a bug where the plugin_data folder is not installed
- Fix crash when other mods are not loaded afterwards
- Restrict incompatible Axe Hammers.
- Added two Hammers
  - Twin Summons
  - Arise Again
- These boons now impact your attack summons
  - Poseidon - Hydraulic Might
  - Aphrodite - Hearty Appetite
  - Hestia - Cardio Gain
  - Ares - Blood Spree

## [0.0.5] - 2026-06-08

- Fix: game crashes when summoning immidiatly after gaining trait
- These boons now impact your attack summons
  - Artemis - Pressure Points
  - Hera - Uncommon Grace
  - Hermes - Hasty Retreat
  - Circe - Word of greater girth
  - Circe - Word of smaller Stature

## [0.0.4] - 2026-06-07

- Fix: unintended speed
- Fix: Hermes weapon boon speed calculation

## [0.0.3] - 2026-06-07

- These boons now impact your attack summons
  - Zeus - Heaven Strike
  - Apollo - Nova Strike
  - Aphrodite - Flutter Strike
  - Hermes - Nimble limbs
  - Chaos - Attack Blessing
  - Zeus - Static Shock
  - Zeus - Shocking Loss
  - Ares - Grisly Gain
  - Artemis - Support fire
  - Apollo - Dazzling Display
  - Aphrodite - Shameless Attitude
  - Apollo - Perfect Image
  - Hermes - Tall order
  - Hermes - MeanStreak
- Added god dependent textures for zombie summons
- Balance Added 40% speed to summons (they now match Fear option)

## [0.0.2] - 2026-06-06

- Added The Silver spade as a new aspect instead of replacing Melinoe's Axe
- Added WeaponBoon effect for the summons (Hera/Demeter/Hestia/Hephaestus/Poseidon)
- Cast now teleports summons to the player

## [0.0.1] - 2026-06-05

### Added

- First version of the mod!

[unreleased]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.3.1...HEAD
[0.3.1]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.3.0...0.3.1
[0.3.0]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.2.1...0.3.0
[0.2.1]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.2.0...0.2.1
[0.2.0]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.1.3...0.2.0
[0.1.3]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.1.2...0.1.3
[0.1.2]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.1.1...0.1.2
[0.1.1]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.8...0.1.0
[0.0.8]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.7...0.0.8
[0.0.7]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.6...0.0.7
[0.0.6]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.5...0.0.6
[0.0.5]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.4...0.0.5
[0.0.4]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/0.0.1...0.0.2
[0.0.1]: https://github.com/Tal-lev/Tools_of_the_Trade/compare/8e2e98aeddbdcd18c7b2ca3a7a291922707e778d...0.0.1
