execute in the_end at @e[type=minecraft:ender_dragon,sort=arbitrary,limit=1] as @e[type=minecraft:player,distance=0..10,nbt={HurtTime:1s}] run scoreboard players set dragon_should_heal pfm_enderdragon_vars 1
execute store result score dragon_hp pfm_enderdragon_vars run data get entity @e[type=minecraft:ender_dragon,sort=arbitrary,limit=1] Health
execute if score dragon_should_heal pfm_enderdragon_vars matches 1 run scoreboard players operation dragon_hp pfm_enderdragon_vars += 2 pfm_constants
execute if score dragon_should_heal pfm_enderdragon_vars matches 1 store result entity @e[type=minecraft:ender_dragon,sort=arbitrary,limit=1] Health float 1 run scoreboard players get dragon_hp pfm_enderdragon_vars
scoreboard players set dragon_should_heal pfm_enderdragon_vars 0

schedule function funnymob:enderdragon/vamp 5t replace