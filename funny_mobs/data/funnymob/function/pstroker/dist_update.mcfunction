execute store result score @s pfm_psex_posx run data get entity @s Pos[0] 100
execute store result score @s pfm_psex_posy run data get entity @s Pos[1] 100
execute store result score @s pfm_psex_posz run data get entity @s Pos[2] 100

scoreboard players operation @s pfm_psex_posx -= @s pfm_psex_prevx
scoreboard players operation @s pfm_psex_posy -= @s pfm_psex_prevy
scoreboard players operation @s pfm_psex_posz -= @s pfm_psex_prevz

scoreboard players operation @s pfm_psex_posx *= @s pfm_psex_posx
scoreboard players operation @s pfm_psex_posy *= @s pfm_psex_posy
scoreboard players operation @s pfm_psex_posz *= @s pfm_psex_posz

scoreboard players operation @s pfm_psex_posx += @s pfm_psex_posy
scoreboard players operation @s pfm_psex_posx += @s pfm_psex_posz

scoreboard players operation in pfm_math = @s pfm_psex_posx
function funnymob:math/sqrt_medium
scoreboard players operation @s pfm_psex_dist = out pfm_math
scoreboard players operation @s pfm_psex_dist /= 100 pfm_math

title @a[distance=..40] times 0 1s 0

execute if score @s pfm_psex_a1 matches 101..120 run title @a[distance=..30] subtitle [{"text":"---- ","color":"gray"},{"score":{"name":"@s","objective":"pfm_psex_dist"},"color":"white"}, {"text":"m / 8m ----", "color":"gray"}]
execute if score @s pfm_psex_a1 matches 121..140 run title @a[distance=..30] subtitle [{"text":"--- ","color":"gray"},{"score":{"name":"@s","objective":"pfm_psex_dist"},"color":"white"}, {"text":"m / 8m ---", "color":"gray"}]
execute if score @s pfm_psex_a1 matches 141..160 run title @a[distance=..30] subtitle [{"text":"-- ","color":"gray"},{"score":{"name":"@s","objective":"pfm_psex_dist"},"color":"white"}, {"text":"m / 8m --", "color":"gray"}]
execute if score @s pfm_psex_a1 matches 161..180 run title @a[distance=..30] subtitle [{"text":"- ","color":"gray"},{"score":{"name":"@s","objective":"pfm_psex_dist"},"color":"white"}, {"text":"m / 8m -", "color":"gray"}]
execute if score @s pfm_psex_a1 matches 181..200 run title @a[distance=..30] subtitle [{"score":{"name":"@s","objective":"pfm_psex_dist"}}, {"text":"m / 8m", "color":"gray"}]

title @a[distance=..40] title ""
