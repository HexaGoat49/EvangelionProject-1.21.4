execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players operation @p aj.jump.frame = @s aj.jump.frame

execute at @s[scores={aj.jump.frame=20..}] as @e[tag=nge.main] if score @s nge.id = @p nge.id run function nge:evas/actions/jump/motion

execute as @s[scores={aj.jump.frame=50..}] at @s as @e[tag=nge.main,predicate=nge:should_fall] if score @s nge.id = @p nge.id as @p run function nge:evas/actions/jump/fall
