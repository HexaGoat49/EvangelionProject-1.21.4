function nge:evas/ride/dismount

execute as @s at @s store result score @s nge.id run scoreboard players get @e[tag=nge.chair,limit=1,sort=nearest] nge.id

attribute @s generic.scale base set 9.1
tag @s add nge.pilot
function nge:effects

execute as @e[tag=nge.root] run function animated_java:eva/animations/close/play
