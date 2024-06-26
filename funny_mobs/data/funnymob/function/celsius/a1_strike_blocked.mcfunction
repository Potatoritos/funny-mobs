title @s times 0 1s 0
execute if entity @s[tag=pfm_celsius_facing] run title @s subtitle {"text":"BLOCKED!","color":"aqua"}
playsound minecraft:item.shield.block neutral @a ~ ~ ~ 1
title @s title ""
