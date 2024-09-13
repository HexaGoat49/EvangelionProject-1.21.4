#execute as @s[nbt={OnGround:1b}] at @a[scores={nge.stateId=3}] if score @s nge.id = @p nge.id run scoreboard players set @s nge.groundDelay 10
#scoreboard players remove @s nge.groundDelay 1
