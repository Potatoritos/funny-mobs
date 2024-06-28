scoreboard players operation @s pfm_parry_cooldown_secs = @s pfm_parry_cooldown
scoreboard players operation @s pfm_parry_cooldown_secs /= 20 pfm_math
# scoreboard players operation @s pfm_parry_cooldown_dec = @s pfm_parry_cooldown
# scoreboard players operation @s pfm_parry_cooldown_dec %= 20 pfm_math
# scoreboard players operation @s pfm_parry_cooldown_dec /= 2 pfm_math

# title @s times 0 4t 0
# execute if score @s pfm_parry_cooldown matches ..0 run title @s subtitle [{"text":"READY","color":"gray"}]
# execute if score @s pfm_parry_cooldown matches 1.. run 
title @s actionbar [{"text":"Parry is on cooldown for ","color":"gray"},{"score":{"name":"@s","objective":"pfm_parry_cooldown_secs"}},{"text":"s"}]

# title @s title ""
