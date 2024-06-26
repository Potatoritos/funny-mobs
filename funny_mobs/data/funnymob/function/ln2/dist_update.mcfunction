
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
execute if score in pfm_math matches 40000.. run function funnymob:math/sqrt_large
execute if score in pfm_math matches ..39999 run function funnymob:math/sqrt_small
scoreboard players operation @s pfm_ln2_dist += out pfm_math
