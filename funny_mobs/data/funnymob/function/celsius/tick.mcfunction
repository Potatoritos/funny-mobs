scoreboard players add @s pfm_celsius_a1 1
effect give @s minecraft:poison infinite 0 true 
effect give @s minecraft:fire_resistance infinite 109 true 

execute if score @s pfm_celsius_a1 matches 139 run data merge entity @s {NoGravity:1b,NoAI:1b}
execute if score @s pfm_celsius_a1 matches 140..258 run function funnymob:celsius/a1
execute if score @s pfm_celsius_a1 matches 259 run tp @s @p[gamemode=survival,distance=..10]
execute if score @s pfm_celsius_a1 matches 260 run function funnymob:celsius/a2_start

execute if score @s pfm_celsius_a1 matches 260..300 run function funnymob:celsius/a2_flash

execute if score @s pfm_celsius_a1 matches 400.. run data merge entity @s {NoGravity:0b,NoAI:0b}
scoreboard players set @s[scores={pfm_celsius_a1=400..}] pfm_celsius_a1 0
