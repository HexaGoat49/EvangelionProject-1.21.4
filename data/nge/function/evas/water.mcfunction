execute at @s run fill ~7 ~-1 ~7 ~-7 ~ ~-7 structure_void replace water
execute at @s store result score @s nge.water run fill ~7 ~-1 ~7 ~-7 ~ ~-7 water replace structure_void

execute unless entity @p[tag=nge.isJumping] unless entity @p[tag=nge.isJumpRunning] run data modify entity @s[scores={nge.water=10..}] Motion[1] set value -0.6d

tag @p remove nge.inWater
execute if entity @s[scores={nge.water=10..}] run tag @p add nge.inWater
