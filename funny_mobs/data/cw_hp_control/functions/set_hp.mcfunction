execute unless score #temp cw_hp_old = #temp cw_hp_old run scoreboard players set #temp 20
execute if score #temp cw_hp_old matches ..0 run effect give @s minecraft:instant_damage 1000 99
execute if score #temp cw_hp_old matches 1..511 run function cw_hp_control:set_hp/l3_i0
execute if score #temp cw_hp_old matches 512..1023 run function cw_hp_control:set_hp/l3_i512
