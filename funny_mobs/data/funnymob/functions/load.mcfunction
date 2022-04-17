scoreboard objectives add pfm_mob_hp dummy

scoreboard objectives add pfm_sneaking minecraft.custom:minecraft.sneak_time

team add pfm_mob_team
team modify pfm_mob_team color red

function funnymob:util/load
function funnymob:spawn/load
function funnymob:ncannon/load
function funnymob:exbow/load
function funnymob:ggunner/load
function funnymob:celsius/load
function funnymob:statue/load
function funnymob:pstroker/load

function funnymob:tick_1s
function funnymob:tick_2s

tellraw @a {"text": "Potatoritos Funny Mobs v2 loaded", "color": "gold"}

