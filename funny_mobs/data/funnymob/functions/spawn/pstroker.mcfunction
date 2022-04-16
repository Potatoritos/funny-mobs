execute if score pstroker pfm_mobcount matches 50 run function funnymob:summon/pstroker
execute if score pstroker pfm_mobcount matches 50 run tp @s ~ ~-500 ~

tag @s add scanned_pstroker

scoreboard players add pstroker pfm_mobcount 1

execute if score pstroker pfm_mobcount matches 100 run scoreboard players set pstroker pfm_mobcount 0
