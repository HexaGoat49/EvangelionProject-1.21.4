execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

# Hor-Motion 
execute as @s store result score @s nge.m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s nge.m2 run data get entity @s Motion[2] 10000

#scoreboard players set @s[predicate=!nge:has_motion] nge.anim_id 1
#scoreboard players set @s[predicate=nge:has_motion] nge.anim_id 2

scoreboard players operation @s nge.m0 *= @s nge.speed
scoreboard players operation @s nge.m2 *= @s nge.speed
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get @s nge.m0
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get @s nge.m2

# Head rotation
execute store result score @s nge.h_rot run data get entity @s Rotation[0]
execute store result score @s nge.v_rot run data get entity @s Rotation[1]
execute as @e[tag=nge.root] at @a if score @s nge.id = @p nge.id run scoreboard players operation @p nge.h_rot -= @s nge.h_rot
# Vertical cutting
scoreboard players set @s[scores={nge.v_rot=51..}] nge.v_rot 50
scoreboard players set @s[scores={nge.v_rot=..-51}] nge.v_rot -50

# Apply animation changes
function nge:evas/anim/main