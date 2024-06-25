execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{pfm_ln2:1b}}}}] at @s run function funnymob:ln2/hold_tick

execute as @e[type=minecraft:arrow,tag=pfm_ln2_arrow] at @s run function funnymob:ln2/arrow_tick

execute as @e[predicate=funnymob:is_ln2_affected] at @s run function funnymob:ln2/affected_tick
