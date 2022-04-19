scoreboard players set @s pfm_celsius_a1_n 0

execute if score @s pfm_mob_hp <= 50 pfm_constants run function funnymob:celsius/a1_low
execute if score @s pfm_mob_hp > 50 pfm_constants if score @s pfm_mob_hp <= 140 pfm_constants run function funnymob:celsius/a1_med
execute if score @s pfm_mob_hp > 140 pfm_constants run function funnymob:celsius/a1_high


