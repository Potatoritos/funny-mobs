function funnymob:math/load
function funnymob:ln2/load
function funnymob:util/load
function funnymob:pstroker/load

scoreboard objectives add pfm_flashing dummy

team add pfm_mob_team
team modify pfm_mob_team color red
team modify pfm_mob_team friendlyFire false
tellraw @a {"text":"Potatoritos' Funny Mobs v3: Loaded"}
