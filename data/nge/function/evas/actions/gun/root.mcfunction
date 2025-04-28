# Executed at player location, as root entity
execute if entity @p[predicate=nge:has_motion] run function animated_java:eva/animations/walk_gun/resume
execute if entity @p[predicate=!nge:has_motion] run function animated_java:eva/animations/walk_gun/pause

scoreboard players set @s nge.verRot 31
scoreboard players operation @s nge.verRot -= @p nge.verRot

scoreboard players operation @s aj.aim.frame = @s nge.verRot

