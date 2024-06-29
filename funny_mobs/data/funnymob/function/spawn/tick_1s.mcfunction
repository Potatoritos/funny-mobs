schedule function funnymob:spawn/tick_1s 1s
execute if score natural_spawns pfm_settings matches 0 run return fail

execute as @e[type=minecraft:zombie,tag=!pfm_spawn_checked] at @s run function funnymob:spawn/replace_zombie
execute as @e[type=minecraft:skeleton,tag=!pfm_spawn_checked] at @s run function funnymob:spawn/replace_skeleton

