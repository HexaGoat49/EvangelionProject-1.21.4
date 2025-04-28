# Executed at player position, as root entity
execute if entity @p[scores={aj.jump_run.frame=20..}] run function animated_java:eva/animations/fall/tween {to_frame: 0, duration: 0}

scoreboard players set @s aj.jump_run.frame 0
scoreboard players set @p aj.jump_run.frame 0

scoreboard players operation @p aj.fall.frame = @s aj.fall.frame
execute as @s[scores={aj.fall.frame=15..}] as @p at @s run function nge:evas/actions/run
