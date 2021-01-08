#the line below makes up and down rotations look a bit better by tilting the head the same way as it is facing, however it is a heavy operation and is not essential
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

scoreboard players operation $parent_id mb_part_id = @s mb_part_id
execute at @s as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_parent_id = $parent_id mb_part_id run function movable_builds:update/do_update_flipped
