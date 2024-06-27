playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.7 0 0 

data merge entity @s {damage:0.5d,PierceLevel:1b,item:{id:"minecraft:tipped_arrow",components:{"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"minecraft:fire_resistance",amplifier:107b,duration:121,show_particles:0b,show_icon:0b}]}, "minecraft:custom_data":{pfm_ln2:1b}}}}
tag @s add pfm_ln2_arrow
