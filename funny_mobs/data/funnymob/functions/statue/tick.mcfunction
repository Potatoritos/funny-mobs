scoreboard players add @s pfm_statue_a1 1
scoreboard players add @s pfm_statue_a3 1

execute as @s[scores={pfm_statue_a1=100,pfm_mob_hp=..140}] positioned ^ ^ ^-1 run function funnymob:summon/htotem
execute as @s[scores={pfm_statue_a1=150,pfm_mob_hp=..70}] run execute as @a[gamemode=survival,distance=..20] at @s run function funnymob:summon/sfield
execute as @s[scores={pfm_statue_a1=225}] run execute as @a[gamemode=survival,distance=..20] at @s run function funnymob:summon/sstatue
execute as @s[scores={pfm_statue_a1=275}] run execute as @a[gamemode=survival,distance=..20] at @s run function funnymob:summon/sfield
execute as @s[scores={pfm_statue_a1=300,pfm_mob_hp=..70}] positioned ^ ^ ^-1 run function funnymob:summon/htotem
execute as @s[scores={pfm_statue_a1=350,pfm_mob_hp=..70}] run execute as @a[gamemode=survival,distance=..20] at @s run function funnymob:summon/sstatue

execute as @s[scores={pfm_statue_a1=400}] run execute as @a[gamemode=survival,distance=..20] at @s run function funnymob:summon/sstatue

execute as @s[scores={pfm_statue_a3=320}] run function funnymob:skill/fw3
execute as @s[scores={pfm_statue_a3=320}] run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.3 20 force
execute as @s[scores={pfm_statue_a3=320}] run tellraw @a[distance=..40] [{"text":"Statue","color":"red"},{"text":" activated ","color":"gray"},{"text":"Seismic Shift","color":"red"},{"text":"!","color":"gray"}]
execute as @s[scores={pfm_statue_a3=320..}] run scoreboard players operation @s pfm_statue_a3_n = @s pfm_statue_a3
execute as @s[scores={pfm_statue_a3=320..}] run scoreboard players operation @s pfm_statue_a3_n %= 6 pfm_constants
execute if score @s pfm_statue_a3_n matches 0 run execute as @a[gamemode=survival,distance=..3] at @s unless block ~ ~ ~ minecraft:bedrock run function funnymob:statue/sink

execute if score @s pfm_statue_a3_n matches 0 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 2 0
execute if score @s pfm_statue_a3_n matches 4 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 2 0

execute as @s[scores={pfm_statue_a3=140..}] run scoreboard players operation @s pfm_statue_a3_n = @s pfm_statue_a3


execute as @s[scores={pfm_statue_a1=180}] run function funnymob:skill/fw1
execute as @s[scores={pfm_celsius_a1=180}] run tellraw @a[distance=..40] [{"text":"Statue","color":"red"},{"text":" activated ","color":"gray"},{"text":"Surge","color":"red"},{"text":"!","color":"gray"}]
execute if score @s pfm_statue_a1 matches 200 run function funnymob:statue/a1
execute if score @s pfm_statue_a1 matches 201 run playsound minecraft:item.trident.thunder neutral @a ~ ~ ~ 1 0
execute if score @s pfm_statue_a1 matches 400 run function funnymob:statue/a1_end

scoreboard players set @s[scores={pfm_statue_a1=400..}] pfm_statue_a1 0

scoreboard players set @s[scores={pfm_statue_a3=400..}] pfm_statue_a3_n -1
scoreboard players set @s[scores={pfm_statue_a3=400..}] pfm_statue_a3 0
