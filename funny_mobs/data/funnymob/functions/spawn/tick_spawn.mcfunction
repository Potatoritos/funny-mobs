execute in overworld as @s[type=zombie,tag=!scanned_wcactus] at @s run function funnymob:spawn/wcactus

execute in overworld as @s[type=zombie,tag=!scanned_arsonist] at @s run function funnymob:spawn/arsonist

execute in overworld as @s[type=skeleton,tag=!scanned_ggunner] at @s run function funnymob:spawn/ggunner
execute in the_nether as @s[type=skeleton,tag=!scanned_ggunner] at @s run function funnymob:spawn/ggunner

execute in overworld as @s[type=skeleton,tag=!scanned_pstroker] at @s run function funnymob:spawn/pstroker
execute in the_nether as @s[type=skeleton,tag=!scanned_pstroker] at @s run function funnymob:spawn/pstroker


execute as @s[type=shulker] store result score @s pfm_mob_hp run data get entity @s Health
execute as @s[type=shulker,tag=!scanned_boss,scores={pfm_mob_hp=30},predicate=funnymob:is_end] at @s run function funnymob:spawn/celsius
execute as @s[type=shulker,tag=!scanned_boss,scores={pfm_mob_hp=30},predicate=funnymob:is_end] at @s run function funnymob:spawn/statue
execute as @s[type=shulker,tag=!scanned_boss,scores={pfm_mob_hp=30},predicate=funnymob:is_end] at @s run function funnymob:spawn/psex
execute as @s[type=shulker,tag=!scanned_boss,scores={pfm_mob_hp=30},predicate=funnymob:is_end] run scoreboard players add celsius pfm_mobcount 1
execute as @s[type=shulker,tag=!scanned_boss,scores={pfm_mob_hp=30},predicate=funnymob:is_end] run tag @s add scanned_boss
execute if score celsius pfm_mobcount matches 81.. run scoreboard players set celsius pfm_mobcount 0
