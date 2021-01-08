execute as @s[tag=edta_mb_hinge] run function movable_builds:update/remember_hinge_rotation

execute if score $do_commit mb_boolean matches 1 run function movable_builds:update/update_next_tilt
execute if score $do_commit mb_boolean matches 2 run function movable_builds:update/tag_root_to_update