execute as @s[type=minecraft:player,scores={pfm_ln2_used=1..}] at @s run function funnymob:ln2/on_shoot

execute as @s[type=minecraft:skeleton,tag=pfm_push_stroker] at @s run function funnymob:ln2/on_shoot
# execute as @s[type=minecraft:skeleton,tag=pfm_push_stroker_ex] at @s run function funnymob:ln2/on_shoot

particle minecraft:poof ~ ~0.3 ~ 0 0 0 0 1 force

# clear @s[type=minecraft:player] minecraft:bow{pfm_ln2:1b,Damage:383}
