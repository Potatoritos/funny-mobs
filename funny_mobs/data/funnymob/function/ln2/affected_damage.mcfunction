execute as @s store result score @s pfm_ln2_posx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ln2_posy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ln2_posz run data get entity @s Pos[2] 100

execute as @s run scoreboard players operation @s pfm_ln2_posx -= @s pfm_ln2_prevx
execute as @s run scoreboard players operation @s pfm_ln2_posy -= @s pfm_ln2_prevy
execute as @s run scoreboard players operation @s pfm_ln2_posz -= @s pfm_ln2_prevz

execute as @s run scoreboard players operation @s pfm_ln2_posx *= @s pfm_ln2_posx
execute as @s run scoreboard players operation @s pfm_ln2_posy *= @s pfm_ln2_posy
execute as @s run scoreboard players operation @s pfm_ln2_posz *= @s pfm_ln2_posz

execute as @s run scoreboard players operation @s pfm_ln2_posx += @s pfm_ln2_posy
execute as @s run scoreboard players operation @s pfm_ln2_posx += @s pfm_ln2_posz

damage @s[scores={pfm_ln2_posx=10000..}] 5

execute as @s store result score @s pfm_ln2_prevx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ln2_prevy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ln2_prevz run data get entity @s Pos[2] 100
