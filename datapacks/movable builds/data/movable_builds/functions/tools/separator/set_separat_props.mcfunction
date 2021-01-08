team join edta_mb_separat @s
scoreboard players operation @s edta_mb_ppl_id = $current_ppl_id edta_mb_ppl_id
execute if score $separat_confirm mb_boolean matches 1 run tag @s remove edta_mb_tmp
tag @s remove edta_mb_todo