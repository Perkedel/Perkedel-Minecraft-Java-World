function movable_builds:scan/set_id
scoreboard players operation @s mb_build_id = $this_build mb_build_id
scoreboard players operation @s mb_parent_id = $parent_id mb_parent_id
scoreboard players set @s mb_build_side 7