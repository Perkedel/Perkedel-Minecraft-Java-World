scoreboard players add $ray_scan mb_scan_limit 1
particle minecraft:cloud
execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run function movable_builds:scan/init_scan
execute unless score $ray_scan mb_scan_limit matches 40.. if block ~ ~ ~ minecraft:air positioned ^ ^ ^1 run function movable_builds:scan/ray_scan
