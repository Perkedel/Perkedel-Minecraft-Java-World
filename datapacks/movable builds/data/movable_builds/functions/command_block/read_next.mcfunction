execute store result score $current_id mb_build_id run data get storage minecraft:edta_mb_read_moves chest_inv[0].tag.mb-build-id
execute store result score $current_move_type mb_move_type run data get storage minecraft:edta_mb_read_moves chest_inv[0].tag.mb-move-type
execute store result score $current_use_type mb_use_type run data get storage minecraft:edta_mb_read_moves chest_inv[0].tag.mb-use-type

function movable_builds:move/control/move
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id


data remove storage minecraft:edta_mb_read_moves chest_inv[0]

execute if data storage minecraft:edta_mb_read_moves chest_inv[0] run function movable_builds:command_block/read_next