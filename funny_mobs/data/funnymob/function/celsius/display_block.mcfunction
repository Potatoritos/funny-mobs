title @s times 0 1s 0
execute if entity @s[tag=pfm_celsius_facing] run title @s subtitle {"text":"CONTINUE FACING","color":"white"}
execute if entity @s[tag=!pfm_celsius_facing] run title @s subtitle {"text":"FACE CELSIUS","color":"gray"}
title @s title ""
