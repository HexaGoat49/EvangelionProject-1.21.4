# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.eva.root] run return 0
execute on passengers if entity @s[tag=aj.eva.data] unless data entity @s {data:{rigHash: 'd57a8d8627f1083fd8945e74731f89f515a6caf1ae558f2973216c8d02c08e7a'}} on vehicle run function animated_java:eva/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1