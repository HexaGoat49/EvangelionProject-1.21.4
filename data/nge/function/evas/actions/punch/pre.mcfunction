# Executed at player location, as root entity
execute store result storage nge:rotation pre.to_frame int 1 run scoreboard players get @s nge.verRot
function animated_java:eva/animations/pre_punch/tween with storage nge:rotation pre
function animated_java:eva/animations/pre_punch/pause
