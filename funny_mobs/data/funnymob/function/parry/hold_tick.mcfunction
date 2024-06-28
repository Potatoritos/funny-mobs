execute as @s[scores={pfm_parry_used=1..}] run function funnymob:parry/try_use
# execute if score @s pfm_parry_timer matches ..0 if score @s pfm_parry_parried_timer matches ..0 if score @s pfm_parry_cooldown matches 1.. run function funnymob:parry/display_cooldown
