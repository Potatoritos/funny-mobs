particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 20 force
playsound minecraft:entity.player.hurt_on_fire neutral @a ~ ~ ~ 1
playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~
effect clear @s minecraft:absorption
scoreboard players operation @s hp_dmg += 4 pfm_math
execute as @s[predicate=funnymob:is_burning] at @s run scoreboard players operation @s hp_dmg += 2 pfm_math
title @s times 0 1s 0
title @s subtitle {"text":"NOT BLOCKED!","color":"red"}
title @s title ""
