tag @s remove nge.isJumpRunning
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/fall_run/tween {to_frame: 0, duration: 0}
