execute at @e[tag=pfm_remove_lava_near] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace lava

# remove area effect clouds from funny crystals exploding
kill @e[type=area_effect_cloud,nbt={Effects:[{Id:12b,Amplifier:78b},{Id:1b,Amplifier:78b}]}]

execute as @e[type=ender_dragon,tag=!pfm_scanned_edrag] run attribute @s generic.max_health modifier add 26f84540-fb96-442c-84a1-25e37920441d "dragon_hp_buff" 1.0 multiply_base
execute as @e[type=ender_dragon,tag=!pfm_scanned_edrag] run data modify entity @s Health set value 400.0f
execute as @e[type=ender_dragon,tag=!pfm_scanned_edrag] run tag @s add pfm_scanned_edrag

execute as @e[type=creeper] run execute as @s at @s unless block ~ ~ ~ air run tp @s ~ ~2 ~