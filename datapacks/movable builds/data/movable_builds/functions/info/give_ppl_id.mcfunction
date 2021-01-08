scoreboard players add $id_pool edta_mb_ppl_id 1
scoreboard players operation @s edta_mb_ppl_id = $id_pool edta_mb_ppl_id

tellraw @s [{"text":"Welcome to the movable builds datapack! You personal ID is ","color":"aqua"},{"score":{"name":"@s","objective":"edta_mb_ppl_id"},"color":"aqua"},{"text":".","color":"aqua"}]