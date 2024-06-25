tag @s add cw_disp_hpinit
scoreboard players set .circle cw_hp_id 0
execute unless score @s cw_hp_id matches 0.. run function cw_hp:setup
execute if score .bool cw_hp_id matches -1 run tellraw @a {"text":"HP Display -> Entity Overflow!"}
execute store result score .current cw_hp run data get entity @s Health
execute store result score .max cw_hp run attribute @s minecraft:generic.max_health get
scoreboard players operation .search cw_hp_id = @s cw_hp_id
data remove storage cw_hp temp
function cw_hp:get_data
data modify block 76891 0 76891 Text1 set value '["",{"text":"[","color":"gray"},{"score":{"name":".current","objective":"cw_hp"},"color":"red"},{"text":"/","color":"gray"},{"score":{"name":".max","objective":"cw_hp"},"color":"dark_red"},{"text":"] ","color":"gray"},{"nbt":"temp","interpret":true,"storage":"cw_hp"}]'
data modify entity @s CustomName set from block 76891 0 76891 Text1