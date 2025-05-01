# Executed on root entity, at pilot position

# Get local
execute store result score @s nge.horRot run data get entity @s Rotation[0]
scoreboard players operation @p nge.horRot -= @s nge.horRot

# Cut
execute as @p run scoreboard players remove @s[scores={nge.horRot=181..}] nge.horRot 360
execute as @p run scoreboard players add @s[scores={nge.horRot=..-181}] nge.horRot 360
