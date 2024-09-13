scoreboard players set @s nge.animId 3
scoreboard players set @s nge.speed 30
tag @s add nge.rotate
tag @s remove nge.isIdle
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/run/tween {to_frame: 3, duration: 5}
