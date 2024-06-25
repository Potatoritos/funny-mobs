tag @s add target
execute as @p[tag=this] if predicate cw_hp:looking run tag @e[tag=target] add cwhp_looking
tag @s remove target