schedule function funnymob:spawn/tick_1s 1s
execute as @e[type=minecraft:marker,tag=pfm_spawn_celsius] at @s run function funnymob:spawn/spawn_celsius
execute as @e[type=minecraft:marker,tag=pfm_spawn_psex] at @s run function funnymob:spawn/spawn_psex

execute if score natural_spawns pfm_settings matches 0 run return fail

execute as @e[type=minecraft:zombie,tag=!pfm_mob,tag=!pfm_spawn_checked] at @s run function funnymob:spawn/replace_zombie
execute as @e[type=minecraft:skeleton,tag=!pfm_mob,tag=!pfm_spawn_checked] at @s run function funnymob:spawn/replace_skeleton

