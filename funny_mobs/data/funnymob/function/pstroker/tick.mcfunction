function funnymob:ln2/hold_tick

effect clear @s minecraft:fire_resistance
effect give @s minecraft:fire_resistance 1 0 true

# scoreboard players reset @s pfm_psex_dist
scoreboard players add @s pfm_psex_a1 1
# scoreboard players add @s pfm_psex_a2 1

execute if score @s pfm_psex_a1 matches 101 run scoreboard players set @s pfm_psex_dist 0
execute if score @s pfm_psex_a1 matches 101 run function funnymob:pstroker/dist_init

execute if score @s pfm_psex_a1 matches 101..200 run function funnymob:pstroker/dist_update

execute if score @s pfm_psex_dist matches 8.. run return run function funnymob:pstroker/displaced
# execute if score @s pfm_psex_a1 matches 100 run tellraw @a {"score":{"name":"@s","objective":"pfm_psex_dist"}}
execute if score @s pfm_psex_a1 matches 200 run execute if score @s pfm_psex_dist matches ..7 run function funnymob:pstroker/not_displaced

execute if score @s pfm_psex_a1 matches 201..240 run playsound minecraft:block.note_block.harp neutral @a ~ ~ ~ 1.5 1.7 0
execute if score @s pfm_psex_a1 matches 201..242 run scoreboard players operation @s pfm_flashing = @s pfm_psex_a1
execute if score @s pfm_psex_a1 matches 201..242 run scoreboard players operation @s pfm_flashing %= 2 pfm_math
execute if score @s pfm_flashing matches 1 run effect give @s minecraft:glowing 1 0 true
execute if score @s pfm_flashing matches 0 run effect clear @s minecraft:glowing
# execute if block ~ ~1 ~ minecraft:air pfm_psex_a2 
execute if score @s pfm_psex_a1 matches 201 run function funnymob:pstroker/a1_particle

execute if score @s pfm_psex_a1 matches 201 run attribute @s minecraft:generic.knockback_resistance base set 100000
execute if score @s pfm_psex_a1 matches 201 run attribute @s minecraft:generic.movement_speed base set 0
execute if score @s pfm_psex_a1 matches 240 run attribute @s minecraft:generic.knockback_resistance base set 0
execute if score @s pfm_psex_a1 matches 240 run attribute @s minecraft:generic.movement_speed base set 0.35

execute if score @s pfm_psex_a1 matches 240 run function funnymob:pstroker/a1_start
execute if score @s pfm_psex_a1 matches 241 run execute as @a[distance=..5,gamemode=survival] at @s run function funnymob:pstroker/a1
execute if score @s pfm_psex_a1 matches 241 run execute if entity @a[distance=..5,limit=1,gamemode=survival] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16736352]}]}}}}
execute if score @s pfm_psex_a1 matches 241 run effect give @s minecraft:levitation 3 11 true
execute if score @s pfm_psex_a1 matches 241..250 run tp @a[distance=..14,gamemode=survival] ^ ^ ^4.5
execute if score @s pfm_psex_a1 matches 281 run effect give @s minecraft:levitation 3 1 true
execute if score @s pfm_psex_a1 matches 260..420 run execute as @a[distance=..8,gamemode=survival] at @s run function funnymob:pstroker/phase
execute if score @s pfm_psex_a1 matches 260.. run function funnymob:pstroker/phase
execute if score @s pfm_psex_a1 matches 320 run function funnymob:pstroker/a1_explosion
execute if score @s pfm_psex_a1 matches 321 run function cw_hp_disp:update

execute if score @s pfm_psex_a1 matches 365 run effect give @s minecraft:slow_falling 10 0 true

execute if score @s pfm_psex_a1 matches 365.. run scoreboard players set @s pfm_psex_a1 0

# execute if score @s pfm_psex_a1 matches 340.. run scoreboard players set @s pfm_psex_a1 0
