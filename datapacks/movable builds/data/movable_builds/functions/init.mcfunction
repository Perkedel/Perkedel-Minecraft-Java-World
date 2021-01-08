scoreboard objectives add mb_part_id dummy
scoreboard objectives add mb_parent_id dummy
scoreboard objectives add mb_build_side dummy
scoreboard objectives add mb_build_id dummy
scoreboard objectives add edta_mb_root_id dummy
scoreboard objectives add edta_mb_ppl_id dummy
scoreboard objectives add mb_previous_id dummy
scoreboard objectives add mb_prev_layer dummy
scoreboard objectives add mb_boolean dummy
scoreboard objectives add mb_hor_rot dummy
scoreboard objectives add mb_ver_rot dummy
scoreboard objectives add mb_timer dummy
scoreboard objectives add mb_scan_limit dummy
scoreboard objectives add mb_layer dummy
scoreboard objectives add mb_use_type dummy
scoreboard objectives add mb_move_type dummy
scoreboard objectives add mb_number dummy
scoreboard objectives add mb_use_item minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mb_drop_coas minecraft.dropped:minecraft.carrot_on_a_stick

scoreboard objectives add edta_mb_sneak minecraft.custom:minecraft.sneak_time

tellraw @a [{"text":"EDTA's Movable Builds datapack loaded. v1.4","color":"aqua"}]
execute as @a run function movable_builds:help

#set the maximum amount of blocks in a build below. 200 still works fluently on my computer for 1 build, but more becomes choppy
scoreboard players set $MAX_NUMBER_OF_BLOCKS_SCANNED mb_scan_limit 500

#maxCommandChainLength should be at least $MAX_NUMBER_OF_BLOCKS_SCANNED * 50
gamerule maxCommandChainLength 70000

team add edta_mb_hinges
team modify edta_mb_hinges color blue
team add edta_mb_ignores
team modify edta_mb_ignores color red
team add edta_mb_separat
team modify edta_mb_separat color red
team add edta_mb_center
team modify edta_mb_center color green

function movable_builds:info/check_ppl_id