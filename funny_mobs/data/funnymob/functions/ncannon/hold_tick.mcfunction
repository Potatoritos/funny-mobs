execute as @s[type=minecraft:player,scores={pfm_ncannon_used=1..}] at @s run function funnymob:ncannon/on_shoot

execute as @s[type=minecraft:skeleton,tag=pfm_push_stroker] at @s run function funnymob:ncannon/on_shoot

particle minecraft:poof ~ ~0.3 ~ 0 0 0 0 1 force

clear @s[type=minecraft:player] minecraft:bow{pfm_ncannon:1b,Damage:383}
