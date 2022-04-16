tag @s add pfm_ncannon_damaged

execute as @s[predicate=funnymob:is_ncannon_affected_start] at @s run function funnymob:ncannon/affected_start

execute as @s[scores={pfm_ncannon_posx=1..}] run scoreboard players add @s pfm_ncannon_sound_timer 1
execute as @s[scores={pfm_ncannon_posx=1..,pfm_ncannon_sound_timer=1}] at @s run playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.3 1
execute as @s[scores={pfm_ncannon_posx=1..,pfm_ncannon_sound_timer=6..}] run scoreboard players set @s pfm_ncannon_sound_timer 0

particle minecraft:poof ~ ~ ~ 0 1 0 0 2 force

execute as @s[scores={pfm_ncannon_posx=1..}] at @s run particle minecraft:crit ~ ~0.5 ~ 0 0 0 1 2 force

function funnymob:ncannon/damage_wrap
