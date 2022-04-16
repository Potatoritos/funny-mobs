particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 10 force

execute as @a[limit=1,sort=nearest,gamemode=survival,distance=..40] at @s anchored eyes facing entity @e[limit=1,tag=pfm_celsius,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run tag @s add pfm_celsius_facing

execute as @p[tag=pfm_celsius_facing] at @s run playsound minecraft:item.shield.block neutral @a ~ ~ ~ 1

execute as @p[tag=!pfm_celsius_facing] at @s run playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~
execute as @p[tag=!pfm_celsius_facing] at @s run playsound minecraft:entity.player.hurt_on_fire neutral @a ~ ~ ~ 1
execute as @p[tag=!pfm_celsius_facing] at @s run particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 20 force
execute as @p[tag=!pfm_celsius_facing] at @s run effect clear @s minecraft:absorption
execute as @p[tag=!pfm_celsius_facing] at @s run scoreboard players operation @s hp_dmg += 5 pfm_constants
execute as @p[tag=!pfm_celsius_facing,predicate=funnymob:is_burning] at @s run scoreboard players operation @s hp_dmg += 3 pfm_constants

tag @p remove pfm_celsius_facing


