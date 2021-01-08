tag @s add edta_mb_builder

execute at @a[tag=edta_mb_builder,sort=nearest,limit=1] as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, tag=center] if score @s mb_build_id = $current_id mb_build_id run function movable_builds:tools/move/summon_rotation_tool
execute at @a[tag=edta_mb_builder,sort=nearest,limit=1] as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, tag=center] if score @s mb_build_id = $current_id mb_build_id run function movable_builds:tools/move/summon_move_tools

tag @s remove edta_mb_builder
function movable_builds:extras/no_command_fb