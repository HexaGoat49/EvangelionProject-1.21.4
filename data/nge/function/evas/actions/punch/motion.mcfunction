# Executed at player position, as main entity
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @p nge.m0
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @p nge.m2

function nge:evas/slow_down