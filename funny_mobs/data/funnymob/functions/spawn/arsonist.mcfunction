execute if score arsonist pfm_mobcount matches 50 run function funnymob:summon/arsonist 
execute if score arsonist pfm_mobcount matches 50 run tp @s ~ ~-500 ~

tag @s add scanned_arsonist

scoreboard players add arsonist pfm_mobcount 1

execute if score arsonist pfm_mobcount matches 100 run scoreboard players set arsonist pfm_mobcount 0
