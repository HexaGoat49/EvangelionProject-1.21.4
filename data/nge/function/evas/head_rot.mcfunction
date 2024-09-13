data modify entity @s transformation.left_rotation set value [0.0f,1.0f,0.0f,0.0f]
data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]

execute at @a[scores={nge.stateId=1}] if score @s nge.id = @p nge.id store result entity @s transformation.left_rotation[3] float 0.01 run scoreboard players get @p nge.horRot
execute at @a if score @s nge.id = @p nge.id store result entity @s transformation.right_rotation[0] float -0.01 run scoreboard players get @p nge.verRot
