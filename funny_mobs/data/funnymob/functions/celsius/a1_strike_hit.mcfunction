playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~
playsound minecraft:entity.player.hurt_on_fire neutral @a ~ ~ ~ 1
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 20 force
effect clear @s minecraft:absorption
scoreboard players operation @s hp_dmg += 4 pfm_constants
execute as @s[predicate=funnymob:is_burning] at @s run scoreboard players operation @s hp_dmg += 3 pfm_constants
