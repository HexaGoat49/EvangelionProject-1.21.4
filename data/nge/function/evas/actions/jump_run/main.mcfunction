execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players operation @p aj.jump_run.frame = @s aj.jump_run.frame

execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id store result entity @s Motion[0] double 0.001 run scoreboard players get @p nge.m0
execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id store result entity @s Motion[2] double 0.001 run scoreboard players get @p nge.m2

execute at @s[scores={aj.jump_run.frame=10..}] as @e[tag=nge.main,nbt={OnGround:1b}] if score @s nge.id = @p nge.id as @p run function nge:evas/actions/run

