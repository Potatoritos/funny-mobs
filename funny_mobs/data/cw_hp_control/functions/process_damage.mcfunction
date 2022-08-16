execute if score @s cw_hp_old = @s cw_hp_old run function cw_hp_control:deal_damage
execute unless score @s cw_hp_old = @s cw_hp_old run function cw_hp_control:initialize_new_player