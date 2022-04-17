#function funnymob:spawn/tick

function funnymob:ncannon/tick
function funnymob:exbow/tick
function funnymob:ggunner/tick

function funnymob:helihelmet/tick

execute as @e[tag=pfm_mob] at @s run function funnymob:tick_mob

scoreboard players reset @a[scores={pfm_sneaking=1..}] pfm_sneaking

#schedule function funnymob:tick 2t

function funnymob:enderdragon/tick