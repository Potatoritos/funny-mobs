effect clear @s minecraft:resistance
attribute @s minecraft:generic.knockback_resistance base set 0
scoreboard players operation @s pfm_parry_cooldown = parry_mk1_cooldown pfm_settings

execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{pfm_mk:2b}},Slot:-106b}]}] run scoreboard players operation @s pfm_parry_cooldown = parry_mk2_cooldown pfm_settings
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{pfm_mk:2b}}}}] run scoreboard players operation @s pfm_parry_cooldown = parry_mk2_cooldown pfm_settings

scoreboard players set @s pfm_parry_timer 0
