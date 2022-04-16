tag @s remove pfm_ncannon_damaged

execute as @s store result score @s pfm_ncannon_prevx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ncannon_prevy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ncannon_prevz run data get entity @s Pos[2] 100

scoreboard players reset @s pfm_ncannon_dmg_timer

playsound minecraft:block.glass.break neutral @a ~ ~ ~ 2 0

