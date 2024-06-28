effect clear @s minecraft:resistance
attribute @s minecraft:generic.knockback_resistance base set 0
scoreboard players operation @s pfm_parry_cooldown = parry_cooldown pfm_settings
scoreboard players set @s pfm_parry_timer 0
