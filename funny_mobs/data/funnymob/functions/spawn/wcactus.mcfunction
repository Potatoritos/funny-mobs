execute if score wcactus pfm_mobcount matches 0 run function funnymob:summon/wcactus
execute if score wcactus pfm_mobcount matches 0 run tp @s ~ ~-500 ~

tag @s add scanned_wcactus

scoreboard players add wcactus pfm_mobcount 1

execute if score wcactus pfm_mobcount matches 100 run scoreboard players set wcactus pfm_mobcount 0
