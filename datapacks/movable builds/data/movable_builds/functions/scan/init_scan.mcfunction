scoreboard players set $blocks_scanned mb_scan_limit 0
scoreboard players add $id_pool mb_build_id 1
scoreboard players operation @s mb_build_id = $id_pool mb_build_id
scoreboard players operation $root_id mb_build_id = $id_pool mb_build_id
scoreboard players operation $current_id mb_build_id = $id_pool mb_build_id
scoreboard players reset $parent_id mb_part_id
scoreboard players set $current_layer mb_layer 0

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1,Invulnerable:1b,Tags:[edta_movable_build,edta_mb_part,center,next_to_scan],Invisible:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.01f,0.01f,0.01f]},DisabledSlots:2039583}
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,tag=!idgiven,limit=1] at @s run function movable_builds:scan/set_properties
function movable_builds:scan/scan_manager

execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $root_id mb_build_id at @s run function movable_builds:update/update_position

scoreboard players operation $current_id mb_build_id = $root_id mb_build_id
tag @s add edta_mb_builder
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id >= $root_id mb_build_id run function movable_builds:scan/post_processing
tag @s remove edta_mb_builder
scoreboard players operation $current_id mb_build_id = $root_id mb_build_id

execute if score $id_pool mb_build_id = $root_id mb_build_id run tellraw @s [{"text":"Scan complete. ID is ","color":"aqua"},{"score":{"name":"$root_id","objective":"mb_build_id"},"color":"aqua"},{"text":"\n[Show demo]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $id_pool mb_build_id at @s run function movable_builds:move/demo"}},{"text":"\n[Help > Moving]","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:move/help"}},{"text":"\n[Kill last build]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_current"}}]
execute unless score $id_pool mb_build_id = $root_id mb_build_id run tellraw @s [{"text":"Scan complete. IDs are ","color":"aqua"},{"score":{"name":"$root_id","objective":"mb_build_id"},"color":"aqua"},{"text":"-","color":"aqua"},{"score":{"name":"$id_pool","objective":"mb_build_id"},"color":"aqua"},{"text":"\n[Show demo]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $id_pool mb_build_id at @s run function movable_builds:move/demo"}},{"text":"\n[Help > Moving]","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:move/help"}},{"text":"\n[Kill last build]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_current"}}]

function movable_builds:cleanup/kill_my_markers