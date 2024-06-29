tag @s add pfm_spawn_checked

scoreboard players add skeleton pfm_spawn_counter 1
scoreboard players operation skeleton pfm_spawn_counter %= 100 pfm_math

execute if score skeleton pfm_spawn_counter matches 99 run function funnymob:summon/push_stroker
execute if score skeleton pfm_spawn_counter matches 99 run tp @s ~ ~-500 ~

