scoreboard players operation @s mb_previous_id = $current_id mb_build_id
scoreboard players add $id_pool mb_build_id 1
scoreboard players operation $current_id mb_build_id = $id_pool mb_build_id
scoreboard players operation @s mb_build_id = $id_pool mb_build_id
scoreboard players operation @s mb_prev_layer = $current_layer mb_layer
scoreboard players set @s mb_layer 0
scoreboard players set $current_layer mb_layer 1

function movable_builds:scan/scan_next
execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $current_id mb_build_id if score @s mb_layer = $current_layer mb_layer run tag @s add next_to_scan
function movable_builds:scan/scan_manager

#return settings so that the scan_manager that called this can continue without issue
scoreboard players operation $current_layer mb_layer = @s mb_prev_layer
scoreboard players operation $current_id mb_build_id = @s mb_previous_id


