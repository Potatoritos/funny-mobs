execute as @s store result score @s pfm_ln2_posx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ln2_posy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ln2_posz run data get entity @s Pos[2] 100

scoreboard players operation @s pfm_ln2_posx -= @s pfm_ln2_prevx
scoreboard players operation @s pfm_ln2_posy -= @s pfm_ln2_prevy
scoreboard players operation @s pfm_ln2_posz -= @s pfm_ln2_prevz

scoreboard players operation @s pfm_ln2_posx *= @s pfm_ln2_posx
scoreboard players operation @s pfm_ln2_posy *= @s pfm_ln2_posy
scoreboard players operation @s pfm_ln2_posz *= @s pfm_ln2_posz

scoreboard players operation @s pfm_ln2_posx += @s pfm_ln2_posy
scoreboard players operation @s pfm_ln2_posx += @s pfm_ln2_posz

scoreboard players operation in pfm_math = @s pfm_ln2_posx
function funnymob:math/sqrt
scoreboard players operation @s pfm_ln2_dist += out pfm_math

execute if entity @s[scores={pfm_ln2_dist=200..}] run function funnymob:ln2/affected_damage

execute as @s store result score @s pfm_ln2_prevx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ln2_prevy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ln2_prevz run data get entity @s Pos[2] 100
