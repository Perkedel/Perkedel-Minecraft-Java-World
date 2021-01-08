execute as @a[nbt=!{SelectedItem:{tag:{mb-use-type:9}}}] run tag @s remove edta_mb_separat
kill @e[type=armor_stand,tag=edta_movable_build, tag=edta_mb_separator,tag=edta_mb_tmp]
scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id
scoreboard players set $ray_scan mb_scan_limit 0
execute as @a[tag=edta_mb_separat] at @s anchored eyes run function movable_builds:tools/separator/separator_ray
execute if entity @a[tag=edta_mb_separat] run schedule function movable_builds:tools/separator/separator_running 1