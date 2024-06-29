# Funny Mobs

A collection of custom mobs, bosses, and combat items for Minecraft 1.21.

# Items

## Parry (Mk.1 / Mk.2)
Right clicking while in the main or off hand starts a parry.

In this state, damage and knockback are nullified.

The parry lasts for 0.3s. Getting hit within this time ends the parry and grants the user:
- Strength VII for 2s
- Speed II for 2s
- Fire resistance for 6s
- Immunity to the Liquid Nitrogen effect for 6s

Note that True Damage cannot be parried.

Cooldown: 18s (Mk.1) / 13s (Mk.2)

To Obtain: 25% chance to drop from an Arsonist (Mk.1) / 100% chance to drop from Celsius 233 (Mk.2)

## Liquid Nitrogen Cannon (Mk.1 / Mk.2)
Shoots arrows infused with LN2. Hit targets will gain the Liquid Nitrogen effect for 6s.

Under this effect, entities are dealt True Damage proportional to the distance they travel—specifically, 0.25 hearts per metre.

This effect does not work on bosses.

Enchantments: Punch II (Mk.1) / Punch III (Mk.2)

Cooldown: 20s (Mk.1) / 14s (Mk.2)

To obtain: 25% chance to drop from a Push Stroker (Mk.1) / 100% chance to drop from Push Stroker EX (Mk.2)

# Mobs

## Animated Spikes
Slowly ambles towards the player. When hit, deals 3 hearts of True Damage to all players within a 6m radius.

Drops: None

## Push Stroker
Wields a Liquid Nitrogen Cannon.

Drops: Liquid Nitrogen Cannon Mk.1 (25% chance)

## Arsonist

Pursues the player with an axe. Every 15s, teleports to the nearest player and unleashes flames in an 8m radius, lasting for 1.5s. Players within this radius take 3.3 hearts of True Damage per second.

Drops: Parry Mk.1 (25% chance)

# Bosses

## Celsius 233
TODO: Description

Drops: Parry Mk.2

## Push Stroker EX
TODO: Description

Drops: Liquid Nitrogen Cannon

# Technical

## Give Commands

- `/function funnymob:give/ln2_mk1`
- `/function funnymob:give/ln2_mk2`
- `/function funnymob:give/parry_mk1`
- `/function funnymob:give/parry_mk2`

## Summon Commands

- `/function funnymob:summon/animated_spikes`
- `/function funnymob:summon/arsonist`
- `/function funnymob:summon/celsius`
- `/function funnymob:summon/push_stroker`
- `/function funnymob:summon/push_stroker_ex`

## Settings

- `/scoreboard players set natural_spawns pfm_settings [0/1]`
  - Determines whether funny mobs should spawn naturally
  - Default: 1 (enabled)
  - Funny mobs replace 1% of skeletons and zombies
- `/scoreboard players set hell_mode pfm_settings [0/1]`
  - With this enabled, funny mobs replace 5% of skeletons and zombies. (4% regular mobs, 1% bosses)
  - Default: 0 (disabled)
- `/function funnymob:settings/reset`
  - Resets settings

## Other details

- All funny mobs are /tagged with `pfm_mob` and are in the `pfm_mob_team` /team.
- Fire aspect with amplifier 107 is used to represent the liquid nitrogen effect.

TODO

# Module Credits

This datapack uses HP control and HP display modules made by [Cloud Wolf](https://www.youtube.com/channel/UCZnBqVITQ0dloqUU0fGxY3g).
