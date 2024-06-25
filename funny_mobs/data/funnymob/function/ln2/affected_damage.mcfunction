# attribute @s minecraft:generic.knockback_resistance base set 100000
# damage @s 1 minecraft:out_of_world
effect clear @s minecraft:absorption
scoreboard players set @s hp_dmg 1
# attribute @s minecraft:generic.knockback_resistance base set 0
scoreboard players set @s pfm_ln2_dist 0
playsound minecraft:block.glass.break neutral @a ~ ~ ~ 0.3 0
playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.3 0
