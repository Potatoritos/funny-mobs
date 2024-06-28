execute as @a[scores={pfm_parry_cooldown=1}] at @s run function funnymob:parry/display_offcooldown
execute as @a[scores={pfm_parry_cooldown=1..}] run scoreboard players operation @s pfm_parry_cooldown -= 1 pfm_math
execute as @a[scores={pfm_parry_timer=1..}] run scoreboard players operation @s pfm_parry_timer -= 1 pfm_math
execute as @a[scores={pfm_parry_parried_timer=1..}] run scoreboard players operation @s pfm_parry_parried_timer -= 1 pfm_math

execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{pfm_parry:1b}}}}] at @s run function funnymob:parry/hold_tick
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{pfm_parry:1b}},Slot:-106b}]}] at @s run function funnymob:parry/hold_tick
execute as @a[scores={pfm_parry_timer=1..}] at @s run function funnymob:parry/parry_tick

