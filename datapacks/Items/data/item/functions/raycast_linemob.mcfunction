scoreboard players add ray raycastdist 1
tp @s ~ ~ ~
tag @e[type=!area_effect_cloud,type=!player,distance=0..1] add hit
execute if block ~ ~ ~ #air positioned ^ ^ ^.5 unless score ray raycastdist matches 100.. run function item:raycast_linemob