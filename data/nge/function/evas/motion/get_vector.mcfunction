# Executed on the pointer, at pilot position

# Get pointer location 
execute store result score @s nge.x run data get entity @s Pos[0] 100.0
execute store result score @s nge.z run data get entity @s Pos[2] 100.0
# Get pilot location
execute as @p store result score @s nge.x run data get entity @s Pos[0] 100.0
execute as @p store result score @s nge.z run data get entity @s Pos[2] 100.0
# Get distance
scoreboard players operation @p nge.x -= @s nge.x
scoreboard players operation @p nge.z -= @s nge.z
# Diagonalize
execute as @p if predicate nge:diagonal run function nge:evas/motion/multiply {"selector":"nge.diagonal"}

