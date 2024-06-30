execute store result score @s pfm_mob_hp run data get entity @s Health

execute if entity @s[tag=pfm_push_stroker] run function funnymob:pstroker/pstroker_tick
execute if entity @s[tag=pfm_push_stroker_ex] run function funnymob:pstroker/tick
execute if entity @s[tag=pfm_celsius] run function funnymob:celsius/tick
execute if entity @s[tag=pfm_arsonist] run function funnymob:celsius/arsonist_tick
execute if entity @s[tag=pfm_aspikes] run function funnymob:aspikes/tick

execute as @e[type=minecraft:boat,distance=..1] at @s run function funnymob:util/explode_kill
execute as @e[type=minecraft:minecart,distance=..1] at @s run function funnymob:util/explode_kill
execute as @e[type=minecraft:iron_golem,distance=..2.5] at @s run function funnymob:util/explode_kill

execute as @s[tag=pfm_boss] run execute if block ~ ~ ~ minecraft:water run tp @r[distance=..35]
