particle minecraft:poof ~ ~0.3 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:arrow,tag=!pfm_ln2_arrow,distance=..2,sort=nearest,limit=1] at @s run function funnymob:ln2/weak_arrow_replace

effect clear @s minecraft:fire_resistance
