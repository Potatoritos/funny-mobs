function funnymob:ncannon/hold_tick

effect clear @s minecraft:fire_resistance
effect give @s minecraft:fire_resistance 1 0 false

scoreboard players add @s pfm_psex_a1 1
scoreboard players add @s pfm_psex_a2 1

execute if score @s pfm_psex_a1 matches 160 run function funnymob:skill/fw1
execute if score @s pfm_psex_a1 matches 160 run tellraw @a[distance=..40] [{"text":"Push Stroker EX","color":"red"},{"text":" activated ","color":"gray"},{"text":"Push Rover","color":"red"},{"text":"!","color":"gray"}]
execute if score @s pfm_psex_a1 matches 180 run execute as @a[distance=..40,gamemode=survival] at @s run function funnymob:pstroker/a1


execute if score @s pfm_psex_a2 matches 320 run function funnymob:skill/fw3
execute if score @s pfm_psex_a2 matches 320 run tellraw @a[distance=..40] [{"text":"Push Stroker EX","color":"red"},{"text":" activated ","color":"gray"},{"text":"Anti-Gravity Mode","color":"red"},{"text":"!","color":"gray"}]

execute if score @s pfm_psex_a2 matches 340 run tp @s @a[limit=1,sort=nearest,gamemode=survival,distance=..40]
execute if score @s pfm_psex_a2 matches 341 run playsound minecraft:entity.arrow.hit neutral @a ~ ~ ~ 1 0
execute if score @s pfm_psex_a2 matches 360 run playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 1.5 2
execute if score @s pfm_psex_a2 matches 360 run execute as @a[distance=..8,gamemode=survival] at @s run function funnymob:pstroker/a2
execute if score @s pfm_psex_a2 matches 360 run effect give @s minecraft:levitation 3 11 true
execute if score @s pfm_psex_a2 matches 400 run effect give @s minecraft:levitation 3 1 true
execute if score @s pfm_psex_a2 matches 360..420 run execute as @a[distance=..8,gamemode=survival] at @s run function funnymob:pstroker/phase
execute if score @s pfm_psex_a2 matches 360.. run function funnymob:pstroker/phase
execute if score @s pfm_psex_a2 matches 400 run function funnymob:pstroker/a2_explosion
execute if score @s pfm_psex_a2 matches 440 run function funnymob:pstroker/a2_explosion


execute if score @s pfm_psex_a2 matches 465 run effect give @s minecraft:slow_falling 10 0 true

execute if score @s pfm_psex_a1 matches 340.. run scoreboard players set @s pfm_psex_a1 0
execute if score @s pfm_psex_a2 matches 500.. run scoreboard players set @s pfm_psex_a2 0
