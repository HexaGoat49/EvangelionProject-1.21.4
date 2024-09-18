# Executed at player location, as root entity
execute store result storage nge:rotation punch.to_frame int 1 run scoreboard players get @s nge.verRot
function animated_java:eva/animations/punch/tween with storage nge:rotation punch
function animated_java:eva/animations/punch/pause
