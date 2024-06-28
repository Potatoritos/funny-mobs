playsound minecraft:block.anvil.land neutral @a ~ ~ ~ 1 2
function funnymob:parry/parry_end
title @s times 0 1s 0
title @s subtitle {"text":"PARRY HIT!","color":"aqua"}
title @s title ""

effect give @s minecraft:speed 2 1 true
effect give @s minecraft:strength 2 6 true
effect give @s minecraft:fire_resistance 6 115 true

scoreboard players set @s pfm_parry_parried_timer 20
