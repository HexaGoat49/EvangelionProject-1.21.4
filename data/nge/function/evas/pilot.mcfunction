# Ride main when dismounted
execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.main] if score @s nge.id = @p nge.id run ride @p mount @s

# Ground delay
execute at @s as @e[tag=nge.hitbox,nbt={OnGround:1b}] if score @s nge.id = @p nge.id run scoreboard players set @p nge.groundDelay 10
scoreboard players remove @s nge.groundDelay 1
scoreboard players set @s[scores={nge.groundDelay=..-1}] nge.groundDelay 0

# Rotation
function nge:evas/rotation/main

# Set state
execute at @s run function nge:evas/states/main
