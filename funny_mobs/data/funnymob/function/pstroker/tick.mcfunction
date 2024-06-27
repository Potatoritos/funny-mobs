function funnymob:ln2/shoot
particle minecraft:poof ~ ~0.3 ~ 0 0 0 0 1 force

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


# execute if block ~ ~1 ~ minecraft:air pfm_psex_a2 
execute if score @s pfm_psex_a1 matches 201 run function funnymob:pstroker/a1_flash_start
execute if score @s pfm_psex_a1 matches 201..240 run function funnymob:pstroker/a1_flash
execute if score @s pfm_psex_a1 matches 240 run function funnymob:pstroker/a1_flash_end
execute if score @s pfm_psex_a1 matches 241 run function funnymob:pstroker/a1_start_after

execute if score @s pfm_psex_a1 matches 241..250 run tp @a[distance=..14,gamemode=survival] ^ ^ ^4.5
execute if score @s pfm_psex_a1 matches 281 run effect give @s minecraft:levitation 3 1 true
execute if score @s pfm_psex_a1 matches 260.. run execute as @a[distance=..8,gamemode=survival] at @s run function funnymob:pstroker/phase
execute if score @s pfm_psex_a1 matches 260.. run function funnymob:pstroker/phase
execute if score @s pfm_psex_a1 matches 320 run function funnymob:pstroker/a1_explosion
execute if score @s pfm_psex_a1 matches 321 run function cw_hp_disp:update

execute if score @s pfm_psex_a1 matches 365 run effect give @s minecraft:slow_falling 10 0 true

execute if score @s pfm_psex_a1 matches 365.. run scoreboard players set @s pfm_psex_a1 0

# execute if score @s pfm_psex_a1 matches 340.. run scoreboard players set @s pfm_psex_a1 0
