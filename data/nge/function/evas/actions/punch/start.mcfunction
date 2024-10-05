tag @s add nge.rotate
scoreboard players set @s nge.stateId 7

scoreboard players set @s nge.punchTime 25

# Calculate rotation
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players set @s nge.verRot 31
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players operation @s nge.verRot -= @p nge.verRot