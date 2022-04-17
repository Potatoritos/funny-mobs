execute as @a[nbt={SelectedItem:{tag:{pfm_ncannon:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]}}}] at @s run function funnymob:ncannon/hold_tick

execute as @e[type=minecraft:arrow,tag=pfm_ncannon_arrow] at @s run function funnymob:ncannon/arrow_tick

execute as @e[predicate=funnymob:is_ncannon_affected] at @s run function funnymob:ncannon/affected_tick

