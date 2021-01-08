tag @s add edta_mb_to_kill
execute as @a run function movable_builds:cleanup/kill_tools
scoreboard players operation $cur_part_id mb_part_id = @s mb_part_id
execute as @e[type=armor_stand,tag=edta_movable_build,tag=!edta_mb_to_kill] if score @s mb_parent_id = $cur_part_id mb_part_id unless score @s mb_build_id = $current_id mb_build_id run function movable_builds:cleanup/kill_recur_next

scoreboard players operation $current_id mb_build_id = @s mb_build_id

scoreboard players operation $cur_parent_id mb_parent_id = @s mb_parent_id
execute as @e[type=armor_stand,tag=edta_movable_build,tag=!edta_mb_to_kill] if score @s mb_part_id = $cur_parent_id mb_parent_id unless score @s mb_build_id = $current_id mb_build_id run function movable_builds:cleanup/kill_recur_next

