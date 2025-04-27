execute at @s as @e[tag=nge.hitbox] if score @s nge.id = @e[tag=nge.hitbox,limit=1,sort=nearest] nge.id run tp @s ~ ~ ~
