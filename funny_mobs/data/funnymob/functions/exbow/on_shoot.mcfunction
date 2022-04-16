execute as @e[distance=..2,limit=1,sort=nearest,type=minecraft:arrow,tag=!pfm_exbow_arrow] at @s run function funnymob:exbow/arrow_replace

execute as @s[type=minecraft:player] run scoreboard players reset @s pfm_ncannon_used
