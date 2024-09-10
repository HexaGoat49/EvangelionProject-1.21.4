kill @e
function animated_java:eva/summon {args:{}}
execute as @e[tag=aj.eva.locator.chair] run data modify entity @s teleport_duration set value 3
ride @s mount @e[limit=1,tag=aj.eva.locator.chair]