tellraw @a {"text":"Evangelion Datapack loaded successfully","color":"#9900FF"}
playsound entity.player.levelup master @a ~ ~ ~ 1 1 1

team add noColl
team modify noColl collisionRule never

scoreboard objectives add nge.id dummy
scoreboard objectives add nge.animId dummy
# Head rotation
scoreboard objectives add nge.horRot dummy
scoreboard objectives add nge.verRot dummy
# Motion
scoreboard objectives add nge.speed dummy
scoreboard objectives add nge.m0 dummy
scoreboard objectives add nge.m1 dummy
scoreboard objectives add nge.m2 dummy
