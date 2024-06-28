title @s times 0 4t 0
title @s subtitle {"text":"PARRYING","color":"gray"}
title @s title ""

execute if score @s pfm_parry_timer matches 1 run function funnymob:parry/parry_end_noparry

execute as @s[nbt={HurtTime:9s}] run function funnymob:parry/parry_hit
