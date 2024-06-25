execute as @s[predicate=funnymob:is_ln2_affected_start] at @s run function funnymob:ln2/affected_start

# execute as @s[scores={pfm_ln2_posx=1..}] run scoreboard players add @s pfm_ln2_sound_timer 1
# execute as @s[scores={pfm_ln2_posx=1..,pfm_ln2_sound_timer=1}] at @s run playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.3 1
# execute as @s[scores={pfm_ln2_posx=1..,pfm_ln2_sound_timer=6..}] run scoreboard players set @s pfm_ln2_sound_timer 0

particle minecraft:poof ~ ~ ~ 0 1 0 0 1 force

execute as @s[scores={pfm_ln2_posx=10..}] at @s run particle minecraft:crit ~ ~0.5 ~ 0 0 0 1 3 force

execute as @s run function funnymob:ln2/affected_dist
