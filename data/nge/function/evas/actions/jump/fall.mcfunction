tag @s remove nge.isJumping
scoreboard players set @s nge.stateId 1
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/fall/tween {to_frame: 0, duration: 0}
