execute store result entity @s Item.tag.mb-build-id short 1 run scoreboard players get $current_id mb_build_id

scoreboard players set $ray_scan mb_scan_limit 0

function movable_builds:tools/move/find_air