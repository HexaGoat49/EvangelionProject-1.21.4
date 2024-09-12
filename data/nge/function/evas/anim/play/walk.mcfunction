tellraw @s[tag=!nge.anim.walk] "Walk play"
execute at @s[tag=!nge.anim.walk] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/walk/tween {to_frame: 12, duration: 10}
tag @s add nge.anim.walk
