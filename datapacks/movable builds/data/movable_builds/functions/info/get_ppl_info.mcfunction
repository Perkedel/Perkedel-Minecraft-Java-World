execute as @a if score @s edta_mb_ppl_id = $current_ppl_id edta_mb_ppl_id run tag @s add edta_mb_builder

execute if entity @a[tag=edta_mb_builder] run tellraw @s [{"text":"This structure belongs to ","color":"aqua"},{"selector":"@a[tag=edta_mb_builder]"}]
execute unless entity @a[tag=edta_mb_builder] if score $current_ppl_id edta_mb_ppl_id matches 1.. run tellraw @s [{"text":"This structure belongs to the person with id ","color":"aqua"},{"score":{"name":"$current_ppl_id","objective":"edta_mb_ppl_id"},"color":"aqua"}, {"text":" who is currently offline.","color":"aqua"}]
execute unless entity @a[tag=edta_mb_builder] if score $current_ppl_id edta_mb_ppl_id matches 0 run tellraw @s [{"text":"This structure does not seem to have a person id.","color":"aqua"}]
tag @a[tag=edta_mb_builder] remove edta_mb_builder
