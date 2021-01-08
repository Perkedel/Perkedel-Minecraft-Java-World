scoreboard players operation current UUID0 = @s UUID0
scoreboard players operation current UUID1 = @s UUID1
scoreboard players operation current UUID2 = @s UUID2
scoreboard players operation current UUID3 = @s UUID3
execute as @a if score @s UUID0 = current UUID0 if score @s UUID1 = current UUID1 if score @s UUID2 = current UUID2 if score @s UUID3 = current UUID3 run function item:found_player