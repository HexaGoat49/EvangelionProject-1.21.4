execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/open/tween {to_frame: 0, duration: 1}

ride @s dismount
execute at @s as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

attribute @s scale base set 1
effect clear @s
scoreboard players set @s nge.id 0
tag @s remove nge.pilot
