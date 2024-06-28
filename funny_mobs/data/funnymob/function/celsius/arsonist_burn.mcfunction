scoreboard players operation @s pfm_celsius_a1_n = @s pfm_celsius_a1
scoreboard players operation @s pfm_celsius_a1_n %= 3 pfm_math

# damage @s 6 funnymob:celsius_burn by @e[type=minecraft:zombie,team=pfm_mob_team,tag=pfm_celsius,sort=nearest,limit=1] from @e[type=minecraft:zombie,team=pfm_mob_team,tag=pfm_celsius,sort=nearest,limit=1] 
execute if score @s pfm_celsius_a1_n matches 0 run execute as @a[gamemode=survival,distance=..7.5] at @s run function funnymob:celsius/a2_burn_hit


