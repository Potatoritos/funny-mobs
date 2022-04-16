particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 2 force
execute as @s[nbt={inGround:1b}] at @s run effect give @e[distance=..3] minecraft:resistance 1 2 true
execute as @s[nbt={inGround:1b}] at @s run summon tnt
kill @s[nbt={inGround:1b}]
