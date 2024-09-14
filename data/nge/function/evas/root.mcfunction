# Executed as root, at pilot position
# Apply rotation
execute if entity @p[tag=nge.rotate,scores={nge.stateId=1..3}] store result entity @s Rotation[0] float 1.0 run data get entity @p Rotation[0] 1.0
execute store result score @s nge.horRot run data get entity @s Rotation[0]

# Horizontal cutting
execute if entity @p[tag=!nge.rotate,scores={nge.horRot=51..}] at @s run tp @s ~ ~ ~ ~10 ~
execute if entity @p[tag=!nge.rotate,scores={nge.horRot=..-51}] at @s run tp @s ~ ~ ~ ~-10 ~

# Falling
scoreboard players operation @p aj.fall.frame = @s aj.fall.frame
execute if entity @s[scores={aj.fall.frame=40}] as @p run function nge:evas/actions/idle
scoreboard players set @s[scores={aj.fall.frame=40}] aj.fall.frame 0