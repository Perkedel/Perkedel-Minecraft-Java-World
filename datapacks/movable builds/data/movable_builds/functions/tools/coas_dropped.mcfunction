execute as @s[scores={edta_mb_sneak=0}] at @s run function movable_builds:tools/switch_item
execute as @s[scores={edta_mb_sneak=1..},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{mb_duplicator:1}}]}] at @s run function movable_builds:tools/duplicate_item
