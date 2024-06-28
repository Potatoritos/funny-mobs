scoreboard players operation @s pfm_ln2_cooldown_secs = @s pfm_ln2_cooldown
scoreboard players operation @s pfm_ln2_cooldown_secs /= 20 pfm_math
scoreboard players operation @s pfm_ln2_cooldown_dec = @s pfm_ln2_cooldown
scoreboard players operation @s pfm_ln2_cooldown_dec %= 20 pfm_math
scoreboard players operation @s pfm_ln2_cooldown_dec /= 2 pfm_math

# tellraw @s [{"text":"Your Liquid Nitrogen Cannon is on cooldown for ","color":"red"},{"score":{"name":"@s","objective":"pfm_ln2_cooldown_secs"}},{"text":"s."}]

# title @s times 0 4t 0
# execute if score @s pfm_ln2_cooldown matches 0 run title @s subtitle [{"text":"READY","color":"gray"}]
# execute if score @s pfm_ln2_cooldown matches 1.. run 
title @s actionbar [{"text":"LN2 Cannon is on cooldown for ","color":"gray"},{"score":{"name":"@s","objective":"pfm_ln2_cooldown_secs"}},{"text":"s"}]
# title @s title ""
