function movable_builds:scan/set_id
scoreboard players add $blocks_scanned mb_scan_limit 1
execute unless block ~ ~ ~ minecraft:tripwire run loot replace entity @s armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:silk_touch,lvl:1}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[edta_movable_build, block_scanned],Duration:10}
#setblock ~ ~ ~ minecraft:air

#the lines below makes it so that stairs and some other blocks, face in the correct direction. However it also causes weird behaviour for up/down rotations when using the line to make those look better
execute if block ~ ~ ~ #minecraft:stairs run function movable_builds:scan/set_stair_model
execute if block ~ ~ ~ #minecraft:slabs run function movable_builds:scan/set_slab_model
execute if block ~ ~ ~ #movable_builds:other_facing run function movable_builds:scan/set_other_model

scoreboard players operation @s mb_parent_id = $parent_id mb_part_id
scoreboard players operation @s mb_build_side = $coming_from_side mb_build_side
scoreboard players operation @s mb_layer = $current_layer mb_layer

execute if entity @e[type=armor_stand, tag=edta_movable_build, tag=edta_mb_hinge, distance=..0.5] run function movable_builds:scan/mark_hinge
