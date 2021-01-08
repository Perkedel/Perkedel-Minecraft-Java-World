tellraw @s [{"text":"\n\nThis method uses helper functions.","color":"aqua"}]
tellraw @s [{"text":"  1. Click the button below to get a suggested command","color":"aqua"}]
tellraw @s [{"text":"  2. In the suggested command, replace 'ID' by the ID of your build","color":"aqua"}]
tellraw @s [{"text":"  3. At the end of the suggested command, complete it with 1 of the helper functions that minecraft will suggest.","color":"aqua"}]
tellraw @s [{"text":"  4. Copy-paste this command into a command block or datapack.","color":"aqua"}]
tellraw @s [{"text":"[Get suggested command]","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run function movable_builds:move/"}}, {"text":"\n"}]

function movable_builds:extras/no_command_fb