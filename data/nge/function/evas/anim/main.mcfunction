execute unless entity @s[scores={nge.anim_id=1}] run tag @s remove nge.anim.idle
execute unless entity @s[scores={nge.anim_id=2}] run tag @s remove nge.anim.walk
execute unless entity @s[scores={nge.anim_id=3}] run tag @s remove nge.anim.run

execute as @s[scores={nge.anim_id=1}] run function nge:evas/anim/play/idle
execute as @s[scores={nge.anim_id=2}] run function nge:evas/anim/play/walk
execute as @s[scores={nge.anim_id=3}] run function nge:evas/anim/play/run
