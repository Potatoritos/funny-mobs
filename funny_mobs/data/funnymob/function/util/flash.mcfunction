playsound minecraft:block.note_block.harp neutral @a ~ ~ ~ 1.5 1.7 0
scoreboard players operation @s pfm_flashing %= 2 pfm_math
execute if score @s pfm_flashing matches 1 run effect give @s minecraft:glowing 1 0 true
execute if score @s pfm_flashing matches 0 run effect clear @s minecraft:glowing
