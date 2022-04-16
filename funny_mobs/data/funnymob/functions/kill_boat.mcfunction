execute as @s[type=minecraft:boat] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @s[type=minecraft:boat] at @s run playsound minecraft:entity.generic.explode neutral @a
kill @s[type=minecraft:boat]

execute as @s[type=minecraft:minecart] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @s[type=minecraft:minecart] at @s run playsound minecraft:entity.generic.explode neutral @a
kill @s[type=minecraft:minecart]

