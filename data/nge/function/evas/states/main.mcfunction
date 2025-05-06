### Set stateId ###
function nge:evas/states/update_id

### Set state ###
# Executed once on state change, on root, at player position
execute unless score @s nge.stateId = @s nge.clonedId at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/states/set_state
scoreboard players operation @s nge.clonedId = @s nge.stateId

### Tick ###
# Apply motion at jump frame 20
execute at @s[scores={nge.stateId=4}] as @e[tag=nge.root,scores={aj.jump.frame=20}] if score @s nge.id = @p nge.id as @p run function nge:evas/motion/jump
# Set to state 0 in fall frame 33
execute at @s[scores={nge.stateId=6}] as @e[tag=nge.root,scores={aj.fall.frame=33..}] if score @s nge.id = @p nge.id run scoreboard players set @p nge.stateId 0
# Use on air motion
execute at @s[scores={nge.stateId=4}] as @e[tag=nge.root,scores={aj.jump.frame=20..}] if score @s nge.id = @p nge.id as @p run function nge:evas/motion/on_air
execute as @s[scores={nge.stateId=5}] run function nge:evas/motion/on_air