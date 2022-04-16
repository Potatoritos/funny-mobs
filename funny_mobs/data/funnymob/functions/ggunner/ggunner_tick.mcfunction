effect clear @s minecraft:slowness

execute as @s[tag=!pfm_corrosive_glue_gunner,scores={pfm_mob_hp=..15}] run function funnymob:ggunner/switch_phase

execute as @s[tag=pfm_corrosive_glue_gunner] run scoreboard players add @s pfm_ggunner_particle_timer 1
execute as @s[tag=pfm_corrosive_glue_gunner,scores={pfm_ggunner_particle_timer=1}] at @s run function funnymob:ggunner/particles
execute as @s[tag=pfm_corrosive_glue_gunner,scores={pfm_ggunner_particle_timer=20..}] run scoreboard players reset @s pfm_ggunner_particle_timer

#execute as @e[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=4..31,sort=nearest,limit=1] at @s run data modify entity @e[tag=pfm_corrosive_glue_gunner,distance=4..31,sort=nearest,limit=1] Invulnerable set value 1b
#execute as @e[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=..4,sort=nearest,limit=1] run data modify entity @e[tag=pfm_corrosive_glue_gunner,distance=..4,sort=nearest,limit=1] Invulnerable set value 0b

execute as @s[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=4..31,sort=nearest,limit=1] at @s run execute as @e[tag=pfm_corrosive_glue_gunner,distance=4..31] run effect give @s minecraft:resistance 1 5
execute as @s[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=4..31,sort=nearest,limit=1] at @s run execute as @e[tag=pfm_corrosive_glue_gunner,distance=4..31] run effect give @s minecraft:glowing 1

execute as @s[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=..4,sort=nearest,limit=1] run effect clear @e[tag=pfm_corrosive_glue_gunner,distance=..4] minecraft:resistance
execute as @s[tag=pfm_corrosive_glue_gunner] at @s run execute as @e[type=minecraft:player,distance=..4,sort=nearest,limit=1] run effect clear @e[tag=pfm_corrosive_glue_gunner,distance=..4] minecraft:glowing

