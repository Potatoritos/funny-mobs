scoreboard players operation @s pfm_ncannon_dmg_hp = @s pfm_ncannon_dmg_stored
scoreboard players operation @s pfm_ncannon_dmg_hp /= 200 pfm_constants

effect clear @s minecraft:absorption
scoreboard players operation @s hp_dmg += @s pfm_ncannon_dmg_hp

scoreboard players operation @s pfm_ncannon_dmg_hp *= 200 pfm_constants
scoreboard players operation @s pfm_ncannon_dmg_stored -= @s pfm_ncannon_dmg_hp

scoreboard players reset @s pfm_ncannon_dmg_timer
