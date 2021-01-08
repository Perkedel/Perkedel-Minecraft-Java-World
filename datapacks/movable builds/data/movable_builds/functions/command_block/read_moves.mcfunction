data modify storage edta_mb_read_moves chest_inv set from block ~ ~1 ~ Items
scoreboard players set $do_commit mb_boolean 2

function movable_builds:command_block/read_next
scoreboard players set $do_commit mb_boolean 1

execute as @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=mb_to_update] run function movable_builds:update/update_position
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=mb_to_update_f] run function movable_builds:update/update_position_flipped
tag @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=mb_to_update] remove mb_to_update
tag @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=mb_to_update_f] remove mb_to_update_f