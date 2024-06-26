execute as @a[distance=..5,gamemode=survival] at @s run function funnymob:pstroker/a1
execute if entity @a[distance=..5,limit=1,gamemode=survival] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16736352]}]}}}}
effect give @s minecraft:levitation 3 11 true
