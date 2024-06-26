scoreboard players operation @s pfm_flashing = @s pfm_celsius_a1
function funnymob:util/flash

tag @a[gamemode=survival,distance=..10] remove pfm_celsius_facing
execute as @a[gamemode=survival,distance=..10] at @s anchored eyes facing entity @e[type=minecraft:zombie,tag=pfm_celsius,sort=nearest,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run tag @s add pfm_celsius_facing

execute as @a[gamemode=survival] at @s run function funnymob:celsius/display_block
