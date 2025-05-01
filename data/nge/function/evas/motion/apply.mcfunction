# Executed on the hitbox, at pilot position}
# Apply speed multiplication
execute as @p run function nge:evas/motion/multiply {"selector":"@s"}

execute store result entity @s Motion[0] double -0.01 run scoreboard players get @p nge.x
execute store result entity @s Motion[2] double -0.01 run scoreboard players get @p nge.z