tag @s add pfm_spawn_checked

scoreboard players add skeleton pfm_spawn_counter 1
scoreboard players operation skeleton pfm_spawn_counter %= 40 pfm_math

execute if score hell_mode pfm_settings matches 1 run return run function funnymob:spawn/replace_skeleton_hell
function funnymob:spawn/replace_skeleton_normal
