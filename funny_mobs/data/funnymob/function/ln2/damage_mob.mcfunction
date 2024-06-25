scoreboard players set @s pfm_mobdmg_incoming 100
scoreboard players reset @s pfm_ln2_dist
# tellraw @a {"score":{"name":"@s","objective":"pfm_mobdmg_incoming"}}
execute as @s run function funnymob:util/damage_mob
