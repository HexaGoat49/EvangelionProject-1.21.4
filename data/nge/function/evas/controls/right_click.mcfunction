advancement revoke @s only nge:right_click
execute at @s[scores={nge.stateId=1..2}] as @e[tag=nge.main,nbt={OnGround:1b}] if score @s nge.id = @p nge.id as @p run function nge:evas/actions/jump/start
execute as @s[scores={nge.stateId=3,nge.groundDelay=1..}] at @s run function nge:evas/actions/jump_run/start