scoreboard players set @s pfm_parry_parried_timer 0
function funnymob:parry/parry_end
title @s times 0 1s 0
title @s subtitle {"text":"PARRY FAIL!","color":"red"}
title @s title ""
scoreboard players set @s pfm_parry_parried_timer 20
