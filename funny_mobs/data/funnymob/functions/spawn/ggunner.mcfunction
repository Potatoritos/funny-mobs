execute if score ggunner pfm_mobcount matches 0 run function funnymob:summon/ggunner
execute if score ggunner pfm_mobcount matches 0 run tp @s ~ ~-500 ~

tag @s add scanned_ggunner

scoreboard players add ggunner pfm_mobcount 1

execute if score ggunner pfm_mobcount matches 100 run scoreboard players set ggunner pfm_mobcount 0
