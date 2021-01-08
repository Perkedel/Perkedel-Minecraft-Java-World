execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_marker,distance=..1,limit=1] run scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id

function movable_builds:info/get_ppl_info

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_marker,distance=..1,limit=1] run effect give @s glowing 5
