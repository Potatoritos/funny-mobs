execute if score celsius pfm_mobcount matches 10 run function funnymob:summon/celsius
execute if score celsius pfm_mobcount matches 10 run tp @s ~ ~-500 ~
tag @s add scanned_boss
scoreboard players add celsius pfm_mobcount 1
execute if score celsius pfm_mobcount matches 50.. run scoreboard players set celsius pfm_mobcount 0

