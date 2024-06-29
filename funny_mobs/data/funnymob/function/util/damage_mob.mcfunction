tag @s add pfm_update_disp_hp
execute store result score @s pfm_mobdmg_hp run data get entity @s Health 100
scoreboard players operation @s pfm_mobdmg_hp -= @s pfm_mobdmg_incoming
execute store result entity @s[scores={pfm_mobdmg_hp=1..}] Health float 0.01 run scoreboard players get @s pfm_mobdmg_hp
kill @s[scores={pfm_mobdmg_hp=..0}]
scoreboard players reset @s pfm_mobdmg_incoming
execute as @s[tag=cw_hp_disp] run function cw_hp_disp:update
