tellraw @a {"text":"Evangelion Datapack loaded successfully","color":"#9900FF"}
playsound entity.player.levelup master @a ~ ~ ~ 1 1 1

team add noColl
team modify noColl collisionRule never

scoreboard objectives add nge.id dummy
scoreboard objectives add nge.anim_id dummy
scoreboard objectives add nge.h_rot dummy
scoreboard objectives add nge.v_rot dummy
# Motion
scoreboard objectives add nge.speed dummy
scoreboard objectives add nge.m0 dummy
scoreboard objectives add nge.m1 dummy
scoreboard objectives add nge.m2 dummy
