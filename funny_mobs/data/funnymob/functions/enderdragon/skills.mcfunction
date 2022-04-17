execute if score dragon_next_skill pfm_enderdragon_vars matches 0 in the_end as @e[type=ender_dragon,sort=arbitrary,limit=1] run function funnymob:enderdragon/explosion
execute if score dragon_next_skill pfm_enderdragon_vars matches 1 in the_end as @e[type=ender_dragon,sort=arbitrary,limit=1] run function funnymob:enderdragon/ravager
execute if score dragon_next_skill pfm_enderdragon_vars matches 2 in the_end as @e[type=ender_dragon,sort=arbitrary,limit=1] run function funnymob:enderdragon/funny_crystal
# add more skills here

scoreboard players operation dragon_next_skill pfm_enderdragon_vars += 1 pfm_constants
execute if score dragon_next_skill pfm_enderdragon_vars matches 3 run scoreboard players set dragon_next_skill pfm_enderdragon_vars 0

tag @e[type=ender_dragon] add pfm_mob_team

schedule function funnymob:enderdragon/skills 10s replace