execute at @s as @e[tag=nge.pointer] if score @s nge.id = @p nge.id run function nge:evas/motion/get_angle
function nge:evas/motion/multiply {"selector":"@s"}
execute at @s as @e[tag=nge.hitbox] if score @s nge.id = @p nge.id run function nge:evas/motion/apply