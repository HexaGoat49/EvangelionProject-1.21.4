tellraw @s[tag=!nge.anim.run] "Run play"
execute at @s[tag=!nge.anim.run] as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/run/tween {to_frame: 3, duration: 5}

tag @s add nge.anim.run
