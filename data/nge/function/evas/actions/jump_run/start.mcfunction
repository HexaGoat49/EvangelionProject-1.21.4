tag @s add nge.isJumpRunning
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/jump_run/tween {to_frame: 0, duration: 0}
scoreboard players set @p nge.stateId 5

execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id run data modify entity @s Motion[1] set value 1.8d
