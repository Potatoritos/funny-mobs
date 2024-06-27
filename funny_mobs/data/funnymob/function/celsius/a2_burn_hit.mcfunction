effect clear @s minecraft:absorption
scoreboard players add @s hp_dmg 1
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 8 force
playsound minecraft:entity.generic.burn neutral @a ~ ~ ~ 1 1
playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~ 2 0.7
