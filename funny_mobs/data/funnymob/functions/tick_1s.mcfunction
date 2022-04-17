function funnymob:spawn/tick

execute as @e[tag=pfm_mob] at @s if block ~ ~ ~ minecraft:water run tp @s ^ ^1 ^1

execute as @e[predicate=funnymob:is_sinking2] at @s run function funnymob:statue/sink

schedule function funnymob:tick_1s 1s
