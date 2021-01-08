scoreboard players add ray raycastdist 1
tp @s ~ ~ ~
execute if block ~ ~ ~ #air positioned ^ ^ ^.5 unless score ray raycastdist matches 100.. run function item:raycast_nomob