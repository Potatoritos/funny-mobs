scoreboard players reset @s pfm_parry_used
scoreboard players add @s pfm_parry_cooldown 0
scoreboard players add @s pfm_parry_timer 0
scoreboard players add @s pfm_parry_parried_timer 0
execute if score @s pfm_parry_cooldown matches ..0 if score @s pfm_parry_timer matches ..0 run function funnymob:parry/parry_start
execute if score @s pfm_parry_cooldown matches 1.. run function funnymob:parry/display_cooldown
