tellraw @s[tag=!nge.anim.idle] "Idle play"
execute at @s[tag=!nge.anim.idle] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/idle/tween {to_frame: 0, duration: 15}

tag @s add nge.anim.idle
