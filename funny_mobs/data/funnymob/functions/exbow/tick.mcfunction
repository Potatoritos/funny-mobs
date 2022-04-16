execute as @a[nbt={SelectedItem:{tag:{pfm_exbow:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}}}] at @s run function funnymob:exbow/hold_tick

execute as @e[type=minecraft:arrow,tag=pfm_exbow_arrow] at @s run function funnymob:exbow/arrow_tick
