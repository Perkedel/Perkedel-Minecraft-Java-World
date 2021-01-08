summon area_effect_cloud ~ ~ ~ {Tags:["raycast"],Invisible:1,Marker:1,Small:1}
execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]
execute store result score @e[tag=raycast,limit=1,sort=nearest] UUID0 run data get entity @s UUID[0]
execute store result score @e[tag=raycast,limit=1,sort=nearest] UUID1 run data get entity @s UUID[1]
execute store result score @e[tag=raycast,limit=1,sort=nearest] UUID2 run data get entity @s UUID[2]
execute store result score @e[tag=raycast,limit=1,sort=nearest] UUID3 run data get entity @s UUID[3]
execute at @s run tp @e[tag=raycast,limit=1,sort=nearest] @s
execute at @s positioned ~ ~1.6 ~ run tp @e[tag=raycast,limit=1,sort=nearest] ~ ~ ~
execute as @e[tag=raycast] at @s run function item:raycast_nomob
scoreboard players set ray raycastdist 0