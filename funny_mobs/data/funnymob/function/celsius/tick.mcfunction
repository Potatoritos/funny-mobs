scoreboard players add @s pfm_celsius_a1 1
effect give @s minecraft:poison infinite 0 true 
effect give @s minecraft:fire_resistance infinite 109 true 

execute if score @s pfm_celsius_a1 matches 139 run data merge entity @s {NoGravity:1b,NoAI:1b}
execute if score @s pfm_celsius_a1 matches 140..258 run function funnymob:celsius/a1
execute if score @s pfm_celsius_a1 matches 259 run tp @s @p[gamemode=survival,distance=..40]
execute if score @s pfm_celsius_a1 matches 260 run function funnymob:celsius/a2_start

execute if score @s pfm_celsius_a1 matches 260..300 run function funnymob:celsius/a2_flash
execute if score @s pfm_celsius_a1 matches 301 run function funnymob:celsius/a2_burn_effect
execute if score @s pfm_celsius_a1 matches 321 run function funnymob:celsius/a2_burn_effect
execute if score @s pfm_celsius_a1 matches 341 run function funnymob:celsius/a2_burn_effect
execute if score @s pfm_celsius_a1 matches 361 run function funnymob:celsius/a2_burn_effect
execute if score @s pfm_celsius_a1 matches 301..380 run execute as @a[distance=..14] at @s run function funnymob:celsius/a2_burn

execute if score @s pfm_mob_hp matches 101..150 run particle minecraft:smoke ~ ~ ~ 0 0.5 0 0.2 1
execute if score @s pfm_mob_hp matches 51..100 run particle minecraft:flame ~ ~ ~ 0 0.5 0 0.2 1
execute if score @s pfm_mob_hp matches 0..50 run particle minecraft:lava ~ ~ ~ 0 0.5 0 0.2 1
execute if score @s pfm_celsius_a1 matches 380 run data merge entity @s {NoGravity:0b,NoAI:0b}
scoreboard players set @s[scores={pfm_celsius_a1=400..}] pfm_celsius_a1 0
