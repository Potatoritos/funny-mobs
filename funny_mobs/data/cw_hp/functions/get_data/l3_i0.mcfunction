
execute if score .search cw_hp_id matches 0..63 run function cw_hp:get_data/l2_i0
execute if score .search cw_hp_id matches 64..127 run function cw_hp:get_data/l2_i64
execute if score .search cw_hp_id matches 128..191 run function cw_hp:get_data/l2_i128
execute if score .search cw_hp_id matches 192..255 run function cw_hp:get_data/l2_i192
execute if score .search cw_hp_id matches 256..319 run function cw_hp:get_data/l2_i256
execute if score .search cw_hp_id matches 320..383 run function cw_hp:get_data/l2_i320
execute if score .search cw_hp_id matches 384..447 run function cw_hp:get_data/l2_i384
execute if score .search cw_hp_id matches 448..511 run function cw_hp:get_data/l2_i448