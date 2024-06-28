scoreboard players set @s pfm_parry_timer 10
playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~ 1 0
effect give @s minecraft:resistance 1 4 true
effect give @s minecraft:fire_resistance 1 115 true
attribute @s minecraft:generic.knockback_resistance base set 1000
function funnymob:parry/particle
