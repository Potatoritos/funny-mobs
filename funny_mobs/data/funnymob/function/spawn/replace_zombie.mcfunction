tag @s add pfm_spawn_checked

scoreboard players add zombie pfm_spawn_counter 1
scoreboard players operation zombie pfm_spawn_counter %= 200 pfm_math

execute if score zombie pfm_spawn_counter matches 99 run function funnymob:summon/animated_spikes
execute if score zombie pfm_spawn_counter matches 99 run tp @s ~ ~-500 ~
execute if score zombie pfm_spawn_counter matches 199 run function funnymob:summon/arsonist
execute if score zombie pfm_spawn_counter matches 199 run tp @s ~ ~-500 ~

