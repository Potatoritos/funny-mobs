execute as @a[scores={pfm_ln2_cooldown=1}] at @s run function funnymob:ln2/display_offcooldown
execute as @a[scores={pfm_ln2_cooldown=1..}] run scoreboard players operation @s pfm_ln2_cooldown -= 1 pfm_math

execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{pfm_ln2:1b}}}}] at @s run function funnymob:ln2/hold_tick

# execute as @a[scores={pfm_ln2_used=1..}] run scoreboard players reset @s pfm_ln2_used

execute as @e[type=minecraft:arrow,tag=pfm_ln2_arrow] at @s run function funnymob:ln2/arrow_tick

execute as @e[predicate=funnymob:is_ln2_affected] at @s run function funnymob:ln2/affected_tick
