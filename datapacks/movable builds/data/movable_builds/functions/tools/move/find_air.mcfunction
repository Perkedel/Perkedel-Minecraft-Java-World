scoreboard players add $air_scan mb_scan_limit 1

execute if block ~ ~ ~ minecraft:air run function movable_builds:tools/move/make_sign

execute unless score $air_scan mb_scan_limit matches 255.. unless block ~ ~ ~ minecraft:air positioned ~ ~1 ~ run function movable_builds:tools/move/find_air