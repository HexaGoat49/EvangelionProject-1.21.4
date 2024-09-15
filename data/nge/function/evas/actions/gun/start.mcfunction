tag @s add nge.rotate
scoreboard players set @s nge.stateId 6

execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/aim/tween {to_frame: 30, duration: 0}
