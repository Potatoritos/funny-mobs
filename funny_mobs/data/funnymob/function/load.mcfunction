function funnymob:math/load
function funnymob:util/load
function funnymob:ln2/load
function funnymob:parry/load
function funnymob:pstroker/load
function funnymob:celsius/load

scoreboard objectives add pfm_flashing dummy
scoreboard objectives add pfm_mob_hp dummy
scoreboard objectives add pfm_settings dummy

scoreboard players add initialized pfm_settings 0
scoreboard players set parry_mk1_cooldown pfm_settings 320
scoreboard players set parry_mk2_cooldown pfm_settings 240
execute if score initialized pfm_settings matches 0 run function funnymob:settings/reset

team add pfm_mob_team
team modify pfm_mob_team color red
team modify pfm_mob_team friendlyFire false
tellraw @a {"text":"Potatoritos' Funny Mobs v3 loaded.","color":"aqua"}
