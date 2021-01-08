scoreboard players add ray raycastdist 1
tp @s ~ ~ ~
execute if block ~ ~ ~ #noclip unless entity @e[type=!area_effect_cloud,tag=!me,distance=0..1] positioned ^ ^ ^.5 unless score ray raycastdist matches 100.. run function item:raycast