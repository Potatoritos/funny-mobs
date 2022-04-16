execute as @s store result score @s pfm_ncannon_posx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ncannon_posy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ncannon_posz run data get entity @s Pos[2] 100

scoreboard players add @s pfm_ncannon_dmg_timer 1

execute as @s[tag=pfm_ncannon_damaged] run function funnymob:ncannon/damage

execute as @s store result score @s pfm_ncannon_prevx run data get entity @s Pos[0] 100
execute as @s store result score @s pfm_ncannon_prevy run data get entity @s Pos[1] 100
execute as @s store result score @s pfm_ncannon_prevz run data get entity @s Pos[2] 100
