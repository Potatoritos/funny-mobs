advancement revoke @s only cw_hp:nametag
tag @s add this
execute as @e[type=!#cw_hp:exempt,distance=..7] run function cw_hp:find_look
tag @s remove this

execute as @e[tag=cwhp_looking] run function cw_hp:update_name