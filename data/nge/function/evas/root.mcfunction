# Apply rotation
execute at @a[tag=nge.pilot,tag=nge.rotate] if score @s nge.id = @p nge.id store result entity @s Rotation[0] float 1.0 run data get entity @p Rotation[0] 1.0
execute store result score @s nge.horRot run data get entity @s Rotation[0]

# Horizontal cutting
execute at @a[tag=nge.pilot,tag=!nge.rotate,scores={nge.horRot=51..}] if score @s nge.id = @p nge.id at @s run tp @s ~ ~ ~ ~10 ~
execute at @a[tag=nge.pilot,tag=!nge.rotate,scores={nge.horRot=..-51}] if score @s nge.id = @p nge.id at @s run tp @s ~ ~ ~ ~-10 ~
