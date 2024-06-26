tag @a[gamemode=survival,distance=..10] remove pfm_celsius_block_sound

execute as @a[gamemode=survival,tag=!pfm_celsius_facing,distance=..10] at @s run function funnymob:celsius/a1_strike_hit
execute as @a[gamemode=survival,tag=pfm_celsius_facing,distance=..10] at @s run function funnymob:celsius/a1_strike_blocked

tag @a[gamemode=survival,distance=..10] remove pfm_celsius_facing

