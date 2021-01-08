execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $current_id mb_build_id run kill @s

execute as @a run function movable_builds:cleanup/kill_tools