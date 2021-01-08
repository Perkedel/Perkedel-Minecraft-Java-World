scoreboard players add $ray_scan mb_scan_limit 1
particle minecraft:cloud
execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1,Invulnerable:1b,Tags:[edta_movable_build, edta_mb_marker, edta_mb_ignore, edta_mb_todo],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:glistering_melon_slice",Count:1b,tag:{CustomModelData:5420101}}],DisabledSlots:2039583,ActiveEffects:[{Id:24b,ShowParticles:0b,Duration:999999, Amplifier:0b}]}
execute as @e[type=minecraft:armor_stand, tag=edta_movable_build, tag=edta_mb_ignore, tag=edta_mb_todo] run function movable_builds:tools/set_ignore_props
execute unless score $ray_scan mb_scan_limit matches 40.. if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.5 run function movable_builds:tools/ignore
