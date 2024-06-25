tag @s remove cwhp_looking

tag @s add this
data modify storage cw_hp temp set value ''
data modify block 76891 0 76891 Text1 set value '{"selector":"@e[tag=this,limit=1]"}'
data modify storage cw_hp temp set from block 76891 0 76891 Text1
function cw_hp:set_data
tag @s remove this

execute store result score .current cw_hp run data get entity @s Health
execute store result score .max cw_hp run attribute @s minecraft:generic.max_health get
scoreboard players operation .search cw_hp_id = @s cw_hp_id
data remove storage cw_hp temp
function cw_hp:get_data
data modify block 76891 0 76891 Text1 set value '["",{"text":"[","color":"gray"},{"score":{"name":".current","objective":"cw_hp"},"color":"red"},{"text":"/","color":"gray"},{"score":{"name":".max","objective":"cw_hp"},"color":"dark_red"},{"text":"] ","color":"gray"},{"nbt":"temp","interpret":true,"storage":"cw_hp"}]'
data modify entity @s CustomName set from block 76891 0 76891 Text1