tag @s add nge.isJumping
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/jump/tween {to_frame: 0, duration: 5}
scoreboard players set @p nge.stateId 4
