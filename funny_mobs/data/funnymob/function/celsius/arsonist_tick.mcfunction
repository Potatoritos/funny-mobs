scoreboard players add @s pfm_celsius_a1 1
effect give @s minecraft:poison infinite 0 true 


execute if score @s pfm_celsius_a1 matches 209 run tp @s @p[gamemode=survival,distance=..20]
execute if score @s pfm_celsius_a1 matches 209 run data merge entity @s {NoGravity:1b,NoAI:1b}
execute if score @s pfm_celsius_a1 matches 210 run function funnymob:celsius/arsonist_start
execute if score @s pfm_celsius_a1 matches 210..240 run function funnymob:celsius/a2_flash
execute if score @s pfm_celsius_a1 matches 240 run function funnymob:celsius/arsonist_burn_effect
execute if score @s pfm_celsius_a1 matches 250 run function funnymob:celsius/arsonist_burn_effect
execute if score @s pfm_celsius_a1 matches 240..260 run function funnymob:celsius/arsonist_burn
execute if score @s pfm_celsius_a1 matches 260 run data merge entity @s {NoGravity:0b,NoAI:0b}

scoreboard players set @s[scores={pfm_celsius_a1=300..}] pfm_celsius_a1 60
