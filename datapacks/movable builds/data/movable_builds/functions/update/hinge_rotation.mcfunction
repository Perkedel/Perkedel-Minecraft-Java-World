execute store result score $old_rotation mb_hor_rot run data get entity @s Rotation[0] 100000
execute store result score $old_rotation mb_ver_rot run data get entity @s Rotation[1] 100000

scoreboard players operation $new_rotation mb_hor_rot = @s mb_hor_rot
scoreboard players operation $new_rotation mb_ver_rot = @s mb_ver_rot

scoreboard players operation $new_rotation mb_hor_rot += $old_rotation mb_hor_rot
scoreboard players operation $new_rotation mb_ver_rot += $old_rotation mb_ver_rot

execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get $new_rotation mb_hor_rot
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get $new_rotation mb_ver_rot
