execute store result score @s pfm_mob_hp run data get entity @s Health

execute if entity @s[tag=pfm_push_stroker] run function funnymob:pstroker/tick
execute if entity @s[tag=pfm_celsius] run function funnymob:celsius/tick

execute as @e[type=minecraft:boat,distance=..1] at @s run function funnymob:util/explode_kill
execute as @e[type=minecraft:minecart,distance=..1] at @s run function funnymob:util/explode_kill


