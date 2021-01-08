execute store result score @s mb_move_type run data get entity @s Item.tag.mb-move-type

execute if score @s mb_move_type matches 1 run data merge entity @s {Item:{tag:{mb-move-type:2,display:{Name:"{\"text\":\"x-\"}"},CustomModelData:5420131}}}
execute if score @s mb_move_type matches 2 run data merge entity @s {Item:{tag:{mb-move-type:3,display:{Name:"{\"text\":\"z+\"}"},CustomModelData:5420132}}}
execute if score @s mb_move_type matches 3 run data merge entity @s {Item:{tag:{mb-move-type:4,display:{Name:"{\"text\":\"z-\"}"},CustomModelData:5420133}}}
execute if score @s mb_move_type matches 4 run data merge entity @s {Item:{tag:{mb-move-type:5,display:{Name:"{\"text\":\"y+\"}"},CustomModelData:5420134}}}
execute if score @s mb_move_type matches 5 run data merge entity @s {Item:{tag:{mb-move-type:6,display:{Name:"{\"text\":\"y-\"}"},CustomModelData:5420135}}}
execute if score @s mb_move_type matches 6 run data merge entity @s {Item:{tag:{mb-move-type:1,display:{Name:"{\"text\":\"x+\"}"},CustomModelData:5420130}}}



data merge entity @s {PickupDelay:0s}