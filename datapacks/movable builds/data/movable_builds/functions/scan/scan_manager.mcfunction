scoreboard players add $current_layer mb_layer 1

execute as @e[type=armor_stand,tag=edta_movable_build,tag=next_to_scan,tag=edta_mb_hinge] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:scan/hinge_scan
execute as @e[type=armor_stand,tag=edta_movable_build,tag=next_to_scan,tag=!edta_mb_hinge] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:scan/scan_next

execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $current_id mb_build_id if score @s mb_layer = $current_layer mb_layer run tag @s add next_to_scan

scoreboard players set $do_next_cycle mb_boolean 0
execute as @e[type=armor_stand,tag=edta_movable_build,tag=next_to_scan] if score @s mb_build_id = $current_id mb_build_id run scoreboard players set $do_next_cycle mb_boolean 1
execute if score $do_next_cycle mb_boolean matches 1 run function movable_builds:scan/scan_manager