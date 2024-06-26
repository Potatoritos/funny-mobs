# attribute @s minecraft:generic.knockback_resistance base set 100000
effect clear @s minecraft:absorption
scoreboard players set @s hp_dmg 1

# tellraw @a [{"text":"distance: "},{"score":{"name":"@s","objective":"pfm_ln2_dist"}}]

scoreboard players operation @s hp_dmg = @s pfm_ln2_dist
scoreboard players operation @s hp_dmg /= 200 pfm_math

scoreboard players set @s pfm_ln2_dist 0
playsound minecraft:block.glass.break neutral @a ~ ~ ~ 0.3 0 0
playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.3 0 0
