scoreboard players set @s pfm_celsius_a1_n 0

execute as @s[scores={pfm_celsius_a1=140..}] run effect clear @s minecraft:fire_resistance

execute if score @s pfm_mob_hp <= 60 pfm_constants run function funnymob:celsius/a1_low
execute if score @s pfm_mob_hp > 60 pfm_constants if score @s pfm_mob_hp <= 140 pfm_constants run function funnymob:celsius/a1_med
execute if score @s pfm_mob_hp > 140 pfm_constants run function funnymob:celsius/a1_high


