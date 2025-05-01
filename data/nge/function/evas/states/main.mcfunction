### Set stateId ###
scoreboard players set @s[scores={nge.stateId=1..3},predicate=!nge:has_motion] nge.stateId 0

scoreboard players set @s[scores={nge.stateId=0},predicate=nge:has_motion] nge.stateId 1
scoreboard players set @s[scores={nge.stateId=1},predicate=nge:backward] nge.stateId 2
scoreboard players set @s[scores={nge.stateId=1},predicate=nge:sprint] nge.stateId 3

scoreboard players set @s[scores={nge.stateId=0..3},predicate=nge:jump] nge.stateId 4

# Añadir predicado de falling
#scoreboard players set @s[scores={nge.stateId=0..3},predicate=nge:falling] nge.stateId 5
#scoreboard players set @s[scores={nge.stateId=5},predicate=!nge:falling] nge.stateId 6

### Set state ###
# This will only be executed when stateId is changed
# Executed on root, at player position
execute unless score @s nge.stateId = @s nge.clonedId at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/states/set_state
scoreboard players operation @s nge.clonedId = @s nge.stateId