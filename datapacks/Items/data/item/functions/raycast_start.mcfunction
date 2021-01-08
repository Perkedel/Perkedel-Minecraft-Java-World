tag @s add me
summon area_effect_cloud ~ ~ ~ {Tags:["raycast"],Invisible:1,Marker:1,Small:1}
execute at @s run tp @e[tag=raycast] @s
execute at @s positioned ~ ~1.6 ~ run tp @e[tag=raycast] ~ ~ ~
execute as @e[tag=raycast] at @s run function item:raycast
scoreboard players set ray raycastdist 0
tag @s remove me