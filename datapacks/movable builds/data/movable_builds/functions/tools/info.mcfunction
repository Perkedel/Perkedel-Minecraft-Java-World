scoreboard players add $ray_scan mb_scan_limit 1
particle minecraft:cloud
execute positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=edta_movable_build,distance=..1,limit=1] run function movable_builds:info/get_info
execute unless score $ray_scan mb_scan_limit matches 500.. positioned ^ ^-1 ^ unless entity @e[type=armor_stand,tag=edta_movable_build,distance=..1,limit=1] positioned ^ ^1 ^0.5 run function movable_builds:tools/info
