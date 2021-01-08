scoreboard players set $separat_active mb_boolean 0
execute if entity @s[tag=edta_mb_separat] run scoreboard players set $separat_active mb_boolean 1
execute if score $separat_active mb_boolean matches 0 run function movable_builds:tools/separator/separator_init
execute if score $separat_active mb_boolean matches 1 if entity @s[scores={edta_mb_sneak=1..}] run function movable_builds:tools/separator/separator_confirm
execute if score $separat_active mb_boolean matches 1 run tag @s remove edta_mb_separat
