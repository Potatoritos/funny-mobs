execute as @s store result score @s pfm_mob_hp run data get entity @s Health
effect give @s minecraft:water_breathing 1
#tag @s add disp_hp

execute as @e[distance=..1] at @s run function funnymob:kill_boat
execute as @e[distance=..4] at @s run function funnymob:kill_crystal

execute as @s[tag=pfm_glue_gunner] at @s run function funnymob:ggunner/ggunner_tick

execute as @s[tag=pfm_celsius] at @s run function funnymob:celsius/tick

execute as @s[tag=pfm_statue] at @s run function funnymob:statue/tick
execute as @s[tag=pfm_healing_totem] at @s run function funnymob:statue/tick_htotem
execute as @s[tag=pfm_stasis_field] at @s run function funnymob:statue/tick_sfield

execute as @s[tag=pfm_push_stroker] at @s run function funnymob:pstroker/tick_nonex
execute as @s[tag=pfm_push_stroker_ex] at @s run function funnymob:pstroker/tick
execute as @s[tag=pfm_push_rover] at @s run function funnymob:pstroker/tick_rover

execute as @s[tag=pfm_spawn] at @s run function funnymob:tick_spawn

tag @s[tag=pfm_boss] add pfm_res
execute as @s[tag=pfm_boss] at @s run execute as @a[distance=..40,limit=1] run tag @e[tag=pfm_boss,distance=..40] remove pfm_res

execute as @s[tag=pfm_res] run effect give @s minecraft:resistance 1 5

