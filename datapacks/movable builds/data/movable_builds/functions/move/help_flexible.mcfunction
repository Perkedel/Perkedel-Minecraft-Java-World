tellraw @s [{"text":"\n\n'Do it yourself' moving. You write the tp command yourself, so everything is possible!","color":"aqua"}]
tellraw @s [{"text":"    1. ","color":"aqua"},{"text":"[tp the center block]","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run tp @s ~ ~ ~ ~ ~"}}, {"text":" (Remember to change the tp coördinates)","color":"aqua"}]
tellraw @s [{"text":"    2. ","color":"aqua"},{"text":"[Update the other blocks]","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run function movable_builds:update/update_position"}}]

tellraw @s [{"text":"\nIn the above command examples, replace ID with the id you get when scanning a build.\n","color":"aqua"}]
function movable_builds:extras/no_command_fb