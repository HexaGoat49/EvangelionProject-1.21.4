attribute @p scale base set 8.5
tag @p add nge.pilot
tag @p remove nge.onSequence
ride @p dismount
execute as @p run function nge:effects
scoreboard players set @p nge.stateId 0
# Temporal
kill @e[tag=aj.eva.bone.entry_plug]
kill @e[tag=aj.eva.bone.door]

function animated_java:eva/animations/idle/play
