execute as @a[scores={mb_use_item=1..}] at @s run function movable_builds:tools/use_item

execute as @a[scores={mb_drop_coas=1..}] at @s run function movable_builds:tools/coas_dropped

scoreboard players set @a mb_drop_coas 0
scoreboard players set @a edta_mb_sneak 0
