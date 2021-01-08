scoreboard players add $ray_scan mb_scan_limit 1
execute unless block ~ ~ ~ minecraft:air positioned ^ ^ ^0.1 run function movable_builds:tools/separator/show_separator
execute unless score $ray_scan mb_scan_limit matches 80.. if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.1 run function movable_builds:tools/separator/separator_ray
