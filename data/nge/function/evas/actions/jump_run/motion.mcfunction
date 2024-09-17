# Executed at player position, as main entity
execute if entity @p[scores={aj.jump_run.frame=1}] run data modify entity @s Motion[1] set value 2.2d

execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @p nge.m0
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @p nge.m2

scoreboard players operation @p nge.m0 *= G19 nge.global
scoreboard players operation @p nge.m0 /= G20 nge.global

scoreboard players operation @p nge.m2 *= G19 nge.global
scoreboard players operation @p nge.m2 /= G20 nge.global

