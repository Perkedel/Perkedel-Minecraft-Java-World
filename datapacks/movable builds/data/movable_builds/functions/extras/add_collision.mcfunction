#experiment to add collision, so that it is possible to walk on a movable build. Has serious issues, so is disabled (uncomment line 8 in do_update function to use)
scoreboard players operation $this_build mb_build_id = @s mb_build_id
scoreboard players operation $parent_id mb_parent_id = @s mb_part_id
function movable_builds:extras/create_shulker