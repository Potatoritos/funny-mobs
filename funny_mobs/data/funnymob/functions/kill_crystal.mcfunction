execute as @s[type=minecraft:end_crystal] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @s[type=minecraft:end_crystal] at @s run playsound minecraft:entity.generic.explode neutral @a
kill @s[type=minecraft:end_crystal]

