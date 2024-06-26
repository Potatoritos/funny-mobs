scoreboard players operation @s pfm_celsius_a1_n %= 30 pfm_math
execute if score @s pfm_celsius_a1_n matches 0 run function funnymob:celsius/a1_tp
execute if score @s pfm_celsius_a1_n matches 0..20 run function funnymob:celsius/a1_flash
execute if score @s pfm_celsius_a1_n matches 21 run function funnymob:celsius/a1_strike
