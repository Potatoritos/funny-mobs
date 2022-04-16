execute as @s run scoreboard players operation @s pfm_ncannon_posx -= @s pfm_ncannon_prevx
execute as @s run scoreboard players operation @s pfm_ncannon_posy -= @s pfm_ncannon_prevy
execute as @s run scoreboard players operation @s pfm_ncannon_posz -= @s pfm_ncannon_prevz

execute as @s run scoreboard players operation @s pfm_ncannon_posx *= @s pfm_ncannon_posx
execute as @s run scoreboard players operation @s pfm_ncannon_posy *= @s pfm_ncannon_posy
execute as @s run scoreboard players operation @s pfm_ncannon_posz *= @s pfm_ncannon_posz

execute as @s run scoreboard players operation @s pfm_ncannon_posx += @s pfm_ncannon_posy
execute as @s run scoreboard players operation @s pfm_ncannon_posx += @s pfm_ncannon_posz

scoreboard players operation in nnmath_sqrt = @s pfm_ncannon_posx
function nnmath:sqrt/exe

execute as @s[type=minecraft:player] run function funnymob:ncannon/damage_player
execute as @s[type=!minecraft:player] run function funnymob:ncannon/damage_mob
