#scoreboard players add @s pfm_fhtotem_heal 1

execute as @e[type=!minecraft:item,distance=..6,tag=!pfm_friendly] at @s run function funnymob:friendlystatue/htotem_heal
particle minecraft:composter ~ ~1 ~ 1 1 1 1 6 force

#execute if score @s pfm_fhtotem_heal matches 10 run execute as @e[distance=..6] at @s run function funnymob:statue/htotem_heal
#execute if score @s pfm_fhtotem_heal matches 10 run particle minecraft:composter ~ ~1 ~ 1 1 1 1 10 force

#scoreboard players reset @s[scores={pfm_fhtotem_heal=80..}] pfm_fhtotem_heal
