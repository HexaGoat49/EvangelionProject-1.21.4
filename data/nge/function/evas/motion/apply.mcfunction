# Executed on the hitbox, at pilot position}
# Apply speed multiplication
#execute as @p if predicate nge:diagonal run function nge:evas/motion/multiply {"percentage":"G71 nge.global"}

execute store result entity @s Motion[0] double -0.01 run scoreboard players get @p nge.x
execute store result entity @s Motion[2] double -0.01 run scoreboard players get @p nge.z