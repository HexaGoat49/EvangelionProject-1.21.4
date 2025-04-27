execute as @s store result score @s nge.m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s nge.m2 run data get entity @s Motion[2] 10000
scoreboard players operation @s nge.m0 *= @s nge.speed
scoreboard players operation @s nge.m2 *= @s nge.speed

scoreboard players operation @s[tag=nge.inWater] nge.m0 /= G2 nge.global
scoreboard players operation @s[tag=nge.inWater] nge.m2 /= G2 nge.global
execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id store result entity @s Motion[0] double 0.001 run scoreboard players get @p nge.m0
execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id store result entity @s Motion[2] double 0.001 run scoreboard players get @p nge.m2
