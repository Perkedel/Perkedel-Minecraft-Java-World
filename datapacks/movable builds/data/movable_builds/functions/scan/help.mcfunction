tellraw @s [{"text":"\n[Scan a build below your feet]","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/execute positioned ~ ~-1 ~ run function movable_builds:scan/init_scan"}}]
tellraw @s [{"text":"[Scan the block you are looking at]","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/execute anchored eyes run function movable_builds:scan/ray_scan"}}]
tellraw @s [{"text":"[Get scanner tool]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_scan_tool"}}]
tellraw @s [{"text":"[Get hinge tool]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_hinge_tool"}}]
tellraw @s [{"text":"[Get ignore tool]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_ignore_tool"}}]
tellraw @s [{"text":"[Get separator tool]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_separator_tool"}}]
function movable_builds:extras/no_command_fb