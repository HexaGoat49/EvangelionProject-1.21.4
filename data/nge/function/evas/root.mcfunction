# Apply rotation
execute at @a[tag=nge.pilot,tag=nge.rotate] if score @s nge.id = @p nge.id store result entity @s Rotation[0] float 0.001 run data get entity @p Rotation[0] 1000.0
