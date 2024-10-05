# Apply animations
execute at @s[scores={nge.punchTime=25}] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/actions/punch/pre
execute at @s[scores={nge.punchTime=15}] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/actions/punch/punch
execute at @s[scores={nge.punchTime=10}] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/actions/punch/pre

scoreboard players remove @p nge.punchTime 1
execute as @s[scores={nge.punchTime=0}] run function nge:evas/actions/idle

# Motion
execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id run function nge:evas/actions/punch/motion