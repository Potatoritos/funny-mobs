scoreboard players operation @s pfm_celsius_a1_n = @s pfm_celsius_a1
scoreboard players operation @s pfm_celsius_a1_n -= 140 pfm_math

execute if score @s pfm_mob_hp > 150 pfm_math run return run function funnymob:celsius/a1_p1
execute if score @s pfm_mob_hp > 100 pfm_math run return run function funnymob:celsius/a1_p2
execute if score @s pfm_mob_hp > 50 pfm_math run return run function funnymob:celsius/a1_p3
function funnymob:celsius/a1_p4
