scoreboard players set @s mb_use_item 0
scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id
scoreboard players set $ray_scan mb_scan_limit 0

execute store result score $current_use_type mb_use_type run data get entity @s SelectedItem.tag.mb-use-type
execute if score $current_use_type mb_use_type matches 1 anchored eyes run function movable_builds:scan/ray_scan
execute if score $current_use_type mb_use_type matches 2 anchored eyes run function movable_builds:move/move_where_looking
execute if score $current_use_type mb_use_type matches 3 anchored eyes run function movable_builds:tools/hinge
execute if score $current_use_type mb_use_type matches 4 anchored eyes run function movable_builds:tools/ignore
execute if score $current_use_type mb_use_type matches 5 anchored eyes run function movable_builds:tools/info
execute if score $current_use_type mb_use_type matches 6..9 run function movable_builds:tools/move/tool_move
execute if score $current_use_type mb_use_type matches 9 run function movable_builds:tools/separator/separator