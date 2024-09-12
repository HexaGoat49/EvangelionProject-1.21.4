# Main entity data
summon giant ~ ~ ~ {Tags:["nge.main.new"],Silent:1b,PersistenceRequired:1b}
execute as @e[tag=nge.main.new] at @s run function nge:effects
attribute @e[tag=nge.main.new,limit=1] minecraft:generic.scale base set 4
attribute @e[tag=nge.main.new,limit=1] minecraft:generic.step_height base set 8
team join noColl @e[tag=nge.main.new]

# Summon and tag AJ model
execute rotated 0 0 run function animated_java:eva/summon/default
function nge:evas/summon/tagging
ride @e[tag=nge.root,limit=1,sort=nearest] mount @e[tag=nge.main.new,limit=1,sort=nearest]
execute as @e[tag=aj.eva.bone] run data modify entity @s height set value -48.0f

# Set ids
scoreboard players operation @e[tag=nge.main.new] nge.id = @e[tag=nge.root,limit=1,sort=nearest] aj.id
scoreboard players operation @e[tag=nge.chair] nge.id = @e[tag=nge.root,limit=1,sort=nearest] aj.id
scoreboard players operation @e[tag=nge.head] nge.id = @e[tag=nge.root,limit=1,sort=nearest] aj.id
execute as @e[tag=nge.root,limit=1,sort=nearest] run scoreboard players operation @s nge.id = @s aj.id

# Change tag
tag @e[tag=nge.main.new] add nge.main
tag @e[tag=nge.main.new] remove nge.main.new

# Anim
# Temp
execute as @e[tag=nge.root] run function animated_java:eva/animations/open/play