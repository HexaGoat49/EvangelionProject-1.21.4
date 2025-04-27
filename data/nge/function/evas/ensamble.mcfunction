tp @e[tag=nge.main] @e[tag=nge.hitbox,limit=1,sort=nearest]

execute as @e[tag=nge.main] store result score @s nge.y run data get entity @s Pos[1] 100
execute as @e[tag=aj.eva.locator] store result score @s nge.y run data get entity @s Rotation[0] 100

scoreboard players operation @e[tag=nge.main,limit=1] nge.y += @e[tag=aj.eva.locator,limit=1] nge.y

execute as @e[tag=nge.main] store result entity @s Pos[1] double 0.01 run scoreboard players get @s nge.y