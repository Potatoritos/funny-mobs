execute as @e[tag=pfm_temp_mob] run scoreboard players operation @s pfm_mobdmg_incoming = 200 pfm_constants
execute as @e[tag=pfm_temp_mob] run function funnymob:util/damage_mob

execute as @e[tag=disp_hp,tag=pfm_update_disp_hp] run function cw_hp:hurt
execute as @e[tag=disp_hp,tag=pfm_update_disp_hp] run tag @s remove pfm_update_disp_hp

schedule function funnymob:tick_2s 2s
