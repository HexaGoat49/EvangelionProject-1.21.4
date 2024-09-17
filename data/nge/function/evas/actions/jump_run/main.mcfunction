execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players operation @p aj.jump_run.frame = @s aj.jump_run.frame

execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id run function nge:evas/actions/jump_run/motion

execute unless entity @s[scores={aj.jump_run.frame=1..19}] at @s as @e[tag=nge.main,predicate=nge:should_fall] if score @s nge.id = @p nge.id as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/actions/jump_run/fall