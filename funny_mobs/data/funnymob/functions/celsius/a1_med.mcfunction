scoreboard players operation @s pfm_celsius_a1_n = @s pfm_celsius_a1
scoreboard players operation @s pfm_celsius_a1_n %= 20 pfm_constants
execute if score @s pfm_celsius_a1_n matches 0 run function funnymob:celsius/a1_tp
execute if score @s pfm_celsius_a1_n matches 9 run function funnymob:celsius/a1_strike
