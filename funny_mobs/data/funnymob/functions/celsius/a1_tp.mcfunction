execute at @a[limit=1,gamemode=survival,sort=nearest,distance=..40] rotated ~ 0 run tp @s ^ ^ ^-2 facing entity @a[limit=1,gamemode=survival,sort=nearest,distance=..40] eyes

particle minecraft:flame ~ ~1 ~ 0.2 -1 0.2 0.2 10 force
playsound minecraft:item.lodestone_compass.lock neutral @a ~ ~ ~ 1.5
