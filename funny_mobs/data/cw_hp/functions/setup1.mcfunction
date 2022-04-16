scoreboard players operation @s cw_hp_id = .system cw_hp_id
scoreboard players operation .search cw_hp_id = .system cw_hp_id
tag @s add this
data modify storage cw_hp temp set value ''
data modify block 76891 0 76891 Text1 set value '{"selector":"@e[tag=this,limit=1]"}'
data modify storage cw_hp temp set from block 76891 0 76891 Text1
function cw_hp:set_data
tag @s remove this