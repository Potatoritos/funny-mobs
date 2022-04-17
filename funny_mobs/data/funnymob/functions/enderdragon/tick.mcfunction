function funnymob:enderdragon/vamp

execute at @e[tag=pfm_remove_lava_near] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace lava

# remove area effect clouds from funny crystals exploding
kill @e[type=area_effect_cloud,nbt={Effects:[{Id:12b,Amplifier:78b},{Id:1b,Amplifier:78b}]}]