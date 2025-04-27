scoreboard players set @s nge.stateId 2
scoreboard players set @s nge.speed 7
tag @s add nge.rotate
tag @s remove nge.isIdle
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/walk/tween {to_frame: 12, duration: 10}

