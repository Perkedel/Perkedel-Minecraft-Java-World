execute store result score $current_id mb_build_id run data get entity @s SelectedItem.tag.mb-build-id
execute store result score $current_move_type mb_move_type run data get entity @s SelectedItem.tag.mb-move-type
scoreboard players set $do_commit mb_boolean 1

function movable_builds:move/control/move