scoreboard players operation $parent_id mb_part_id = @s mb_parent_id
execute as @e[tag=edta_movable_build] if score @s mb_part_id = $parent_id mb_part_id run function movable_builds:update/get_parent_rotation

execute store result score @s mb_hor_rot run data get entity @s Rotation[0] 100000
execute store result score @s mb_ver_rot run data get entity @s Rotation[1] 100000

scoreboard players operation @s mb_hor_rot -= $parent_rotation mb_hor_rot
scoreboard players operation @s mb_ver_rot -= $parent_rotation mb_ver_rot
