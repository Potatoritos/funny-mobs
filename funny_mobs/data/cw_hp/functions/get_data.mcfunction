
execute if score .search cw_hp_id matches 0..511 run function cw_hp:get_data/l3_i0
execute if score .search cw_hp_id matches 512..1023 run function cw_hp:get_data/l3_i512
execute if score .search cw_hp_id matches 1024..1535 run function cw_hp:get_data/l3_i1024
execute if score .search cw_hp_id matches 1536..2047 run function cw_hp:get_data/l3_i1536
execute if score .search cw_hp_id matches 2048..2559 run function cw_hp:get_data/l3_i2048
execute if score .search cw_hp_id matches 2560..3071 run function cw_hp:get_data/l3_i2560
execute if score .search cw_hp_id matches 3072..3583 run function cw_hp:get_data/l3_i3072
execute if score .search cw_hp_id matches 3584..4095 run function cw_hp:get_data/l3_i3584