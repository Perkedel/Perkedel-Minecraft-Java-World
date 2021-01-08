#get coords from the center
execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:[edta_movable_build, edta_mb_separator,edta_mb_todo]}
execute as @e[type=minecraft:area_effect_cloud, tag=edta_movable_build, tag=edta_mb_separator, tag=edta_mb_todo] run function movable_builds:tools/separator/separator_mid_coords

#get coords from the current location
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[edta_movable_build, edta_mb_separator,edta_mb_todo]}
execute as @e[type=minecraft:area_effect_cloud, tag=edta_movable_build, tag=edta_mb_separator, tag=edta_mb_todo] run function movable_builds:tools/separator/separator_loc_coords

#calculate for x, y and z how far the current location os from the middle
scoreboard players operation $x_loc mb_number -= $x_mid mb_number
scoreboard players operation $y_loc mb_number -= $y_mid mb_number
scoreboard players operation $z_loc mb_number -= $z_mid mb_number

#calculate square root to cancel out negative numbers
scoreboard players operation $x_sq mb_number = $x_loc mb_number
scoreboard players operation $y_sq mb_number = $y_loc mb_number
scoreboard players operation $z_sq mb_number = $z_loc mb_number

scoreboard players operation $x_sq mb_number *= $x_sq mb_number
scoreboard players operation $y_sq mb_number *= $y_sq mb_number
scoreboard players operation $z_sq mb_number *= $z_sq mb_number

execute if score $x_sq mb_number > $y_sq mb_number if score $x_sq mb_number > $z_sq mb_number run function movable_builds:tools/separator/separator_x
execute if score $y_sq mb_number > $x_sq mb_number if score $y_sq mb_number > $z_sq mb_number run function movable_builds:tools/separator/separator_y
execute if score $z_sq mb_number > $x_sq mb_number if score $z_sq mb_number > $y_sq mb_number run function movable_builds:tools/separator/separator_z

execute as @e[type=minecraft:armor_stand, tag=edta_movable_build, tag=edta_mb_separator, tag= edta_mb_todo] run function movable_builds:tools/separator/set_separat_props