scoreboard players operation @s pfm_mobdmg_incoming = out nnmath_sqrt
scoreboard players operation @s pfm_mobdmg_incoming /= 2 pfm_constants
#tellraw @a {"score":{"name":"@s","objective":"pfm_mobdmg_incoming"}}
execute as @s run function funnymob:util/damage_mob
