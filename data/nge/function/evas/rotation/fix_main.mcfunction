# Cut when out of range
execute if entity @p[scores={nge.horRot=61..}] at @s run tp @s ~ ~ ~ ~15 0
execute if entity @p[scores={nge.horRot=..-61}] at @s run tp @s ~ ~ ~ ~-15 0

# Set to 0 when not in idle state
execute unless entity @p[scores={nge.stateId=0}] at @s run tp @s ~ ~ ~ 0 0