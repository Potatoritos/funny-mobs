scoreboard players operation @s pfm_ncannon_dmg_stored += out nnmath_sqrt
scoreboard players set @s[scores={pfm_ncannon_dmg_stored=..0}] pfm_ncannon_dmg_stored 0

execute as @s[scores={pfm_ncannon_dmg_timer=10..,pfm_ncannon_dmg_stored=303..}] run function funnymob:ncannon/damage_player_apply

