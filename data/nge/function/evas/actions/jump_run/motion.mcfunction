# Executed at player position, as main entity
execute if entity @p[scores={aj.jump_run.frame=1}] run data modify entity @s Motion[1] set value 2.2d

execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @p nge.m0
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @p nge.m2

function nge:evas/slow_down

