# Executed at player position, as head bone entity
data modify entity @s transformation.left_rotation set value [0.0f,1.0f,0.0f,0.0f]
data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]

execute if entity @p[tag=!nge.rotate] store result entity @s transformation.left_rotation[3] float 0.01 run scoreboard players get @p nge.horRot
execute store result entity @s transformation.right_rotation[0] float -0.01 run scoreboard players get @p nge.verRot
