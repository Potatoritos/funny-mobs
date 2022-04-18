particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 10 force

execute as @a[limit=1,sort=nearest,gamemode=survival,distance=..40] at @s anchored eyes facing entity @e[limit=1,tag=pfm_celsius,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run tag @s add pfm_celsius_facing

execute as @a[limit=1,sort=nearest,gamemode=survival,tag=pfm_celsius_facing] at @s run playsound minecraft:item.shield.block neutral @a ~ ~ ~ 1

execute as @a[limit=1,sort=nearest,gamemode=survival,tag=!pfm_celsius_facing,distance=..40] at @s run function funnymob:celsius/a1_strike_hit

tag @p remove pfm_celsius_facing


