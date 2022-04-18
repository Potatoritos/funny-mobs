scoreboard players add @s pfm_celsius_a1 1

execute as @s[scores={pfm_celsius_a1=120}] run function funnymob:skill/fw1

execute as @s[scores={pfm_celsius_a1=120}] run tellraw @a[distance=..40] [{"text":"Celsius 233","color":"red"},{"text":" activated ","color":"gray"},{"text":"Incendiary Strikes","color":"red"},{"text":"!","color":"gray"}]
execute as @s[scores={pfm_celsius_a1=121}] positioned ^ ^ ^-1 run function funnymob:summon/fturret
execute as @s[scores={pfm_celsius_a1=140..}] run data merge entity @s {NoGravity:1b}
execute as @s[scores={pfm_celsius_a1=140..}] at @s run function funnymob:celsius/a1

effect give @s minecraft:fire_resistance 1 0 true

execute if score @s pfm_celsius_a1 matches 239 run data merge entity @s {NoGravity:0b}
execute if score @s pfm_celsius_a1 matches 239 run tp @a[limit=1,distance=..40,sort=nearest,gamemode=survival]
execute if score @s pfm_celsius_a1 matches 239 run playsound minecraft:block.anvil.land neutral @a ~ ~ ~ 0.9 0
scoreboard players set @s[scores={pfm_celsius_a1=239..}] pfm_celsius_a1 0


execute as @s[scores={pfm_mob_hp=..50},tag=!pfm_celsius_lowhp] run playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 1.2 0.5
execute as @s[scores={pfm_mob_hp=..50},tag=!pfm_celsius_lowhp] run scoreboard players set @s pfm_celsius_p 0
execute as @s[scores={pfm_mob_hp=..50}] run tag @s add pfm_celsius_lowhp
execute as @s[tag=pfm_celsius_lowhp] run effect give @s minecraft:strength 1 2
effect give @s[tag=pfm_celsius_lowhp] minecraft:glowing 1 0 true
execute as @s[tag=pfm_celsius_lowhp] run scoreboard players add @s pfm_celsius_p 1

execute as @s[scores={pfm_celsius_p=1..}] run scoreboard players operation @s pfm_celsius_p_n = @s pfm_celsius_p
execute as @s[scores={pfm_celsius_p=1..}] run scoreboard players operation @s pfm_celsius_p_n %= 20 pfm_constants

execute if score @s pfm_celsius_p_n matches 1 run scoreboard players set @s pfm_celsius_p_s 301

execute if score @s pfm_celsius_p_n matches 1 run scoreboard players operation @s pfm_celsius_p_s -= @s pfm_celsius_p
execute if score @s pfm_celsius_p_n matches 1 run scoreboard players operation @s pfm_celsius_p_s /= 20 pfm_constants
execute if score @s pfm_celsius_p_n matches 1 run title @a[distance=..20] times 0 21 5
execute if score @s pfm_celsius_p_n matches 1 run title @a[distance=..20] subtitle [{"score":{"name":"@s","objective":"pfm_celsius_p_s"},"color":"red"}, {"text":"s","color":"gray"}]
execute if score @s pfm_celsius_p_n matches 1 run title @a[distance=..20] title ""
#execute as @s[scores={pfm_celsius_p_n=0}] run scoreboard players operation @s pfm_celsius_p_s /= 20 pfm_constants

execute as @s[scores={pfm_celsius_p=300..}] run playsound minecraft:block.respawn_anchor.charge neutral @a ~ ~ ~ 1.2 0.5
execute as @s[scores={pfm_celsius_p=300..}] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute as @s[scores={pfm_celsius_p=300..}] run tag @s add pfm_update_disp_hp
execute as @s[scores={pfm_celsius_p=300..}] run execute store result entity @s Health int 1 run scoreboard players get 90 pfm_constants
execute as @s[scores={pfm_mob_hp=61..}] run tag @s remove pfm_celsius_lowhp
execute as @s[scores={pfm_mob_hp=61..}] run scoreboard players set @s pfm_celsius_p 0
execute as @s[scores={pfm_mob_hp=61..}] run scoreboard players set @s pfm_celsius_p_n 0
execute as @s[scores={pfm_mob_hp=61..}] run effect clear @s minecraft:strength
