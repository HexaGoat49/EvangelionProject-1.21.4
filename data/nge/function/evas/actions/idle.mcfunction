scoreboard players set @s nge.stateId 1
scoreboard players set @s nge.speed 7
tag @s remove nge.rotate
tag @s add nge.isIdle
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/idle/tween {to_frame: 0, duration: 15}
