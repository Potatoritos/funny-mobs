scoreboard players add @s pfm_htotem_heal 1

execute if score @s pfm_htotem_heal matches 10 run execute as @e[distance=..15,limit=1,sort=nearest,tag=pfm_statue] at @s run function funnymob:statue/htotem_heal
execute if score @s pfm_htotem_heal matches 10 run particle minecraft:composter ~ ~1 ~ 1 1 1 1 10 force

scoreboard players reset @s[scores={pfm_htotem_heal=50..}] pfm_htotem_heal
