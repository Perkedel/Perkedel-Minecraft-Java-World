
execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] run function movable_builds:info/get_build_info

execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_marker,distance=..1,limit=1] run function movable_builds:info/get_marker_info
