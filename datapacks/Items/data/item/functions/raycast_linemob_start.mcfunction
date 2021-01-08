summon area_effect_cloud ~ ~ ~ {Tags:["raycast"],Invisible:1,Marker:1,Small:1}
execute at @s run tp @e[tag=raycast,limit=1,sort=nearest] @s
execute at @s positioned ~ ~1.6 ~ run tp @e[tag=raycast,limit=1,sort=nearest] ~ ~ ~
execute as @e[tag=raycast] at @s run function item:raycast_linemob
scoreboard players set ray raycastdist 0