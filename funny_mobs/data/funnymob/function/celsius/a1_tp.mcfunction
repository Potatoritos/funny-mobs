execute at @p[gamemode=survival,distance=..40] rotated ~ 0 run tp @s ^ ^ ^-2 facing entity @p[gamemode=survival,distance=..40] eyes
execute if entity @a[gamemode=survival,distance=..40] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.7
