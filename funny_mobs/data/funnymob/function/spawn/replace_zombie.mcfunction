tag @s add pfm_spawn_checked

scoreboard players add zombie pfm_spawn_counter 1
scoreboard players operation zombie pfm_spawn_counter %= 200 pfm_math

execute if score hell_mode pfm_settings matches 1 run return run function funnymob:spawn/replace_zombie_hell
function funnymob:spawn/replace_zombie_normal
