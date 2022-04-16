scoreboard players operation @s pfm_celsius_a1_n = @s pfm_celsius_a1
scoreboard players operation @s pfm_celsius_a1_n %= 40 pfm_constants
execute if score @s pfm_celsius_a1_n matches 20 run function funnymob:celsius/a1_tp

execute if score @s pfm_celsius_a1_n matches 39 run function funnymob:celsius/a1_strike
