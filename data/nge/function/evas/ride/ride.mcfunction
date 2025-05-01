function nge:evas/ride/dismount

# Copy ID from closest eva
execute as @s at @s store result score @s nge.id run scoreboard players get @n[tag=nge.main] nge.id

attribute @s scale base set 6.5
tag @s add nge.pilot
function nge:effects

execute as @e[tag=nge.root] run function animated_java:eva/animations/close/play
