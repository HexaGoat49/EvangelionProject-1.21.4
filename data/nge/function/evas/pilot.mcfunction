execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

# H-Motion 
execute as @s store result score @s nge.m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s nge.m2 run data get entity @s Motion[2] 10000
scoreboard players operation @s nge.m0 *= @s nge.speed
scoreboard players operation @s nge.m2 *= @s nge.speed
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get @s nge.m0
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get @s nge.m2
