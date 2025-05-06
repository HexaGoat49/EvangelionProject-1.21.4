# Executed as hitbox, at player position
# Apply vertical motion
execute at @s as @e[tag=nge.hitbox] if score @p nge.id = @s nge.id run data modify entity @s Motion[1] set value 1.8
