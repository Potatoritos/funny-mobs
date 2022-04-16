execute as @s[type=minecraft:player,scores={pfm_exbow_used=1..}] at @s run function funnymob:exbow/on_shoot

particle minecraft:large_smoke ~ ~0.3 ~ 0 0 0 0 1 force

clear @s[type=minecraft:player] minecraft:crossbow{pfm_exbow:1b,Damage:383}
