execute store result score @s mb_move_type run data get entity @s Item.tag.mb-move-type

execute if score @s mb_move_type matches 1 run data merge entity @s {Item:{tag:{mb-move-type:2,display:{Name:"{\"text\":\"Rotate Counter Clockwise\"}"},CustomModelData:5420111}}}
execute if score @s mb_move_type matches 2 run data merge entity @s {Item:{tag:{mb-move-type:3,display:{Name:"{\"text\":\"Rotate Up\"}"},CustomModelData:5420112}}}
execute if score @s mb_move_type matches 3 run data merge entity @s {Item:{tag:{mb-move-type:4,display:{Name:"{\"text\":\"Rotate Down\"}"},CustomModelData:5420113}}}
execute if score @s mb_move_type matches 4 run data merge entity @s {Item:{tag:{mb-move-type:5,display:{Name:"{\"text\":\"Rotate Up 360\"}"},CustomModelData:5420114}}}
execute if score @s mb_move_type matches 5 run data merge entity @s {Item:{tag:{mb-move-type:6,display:{Name:"{\"text\":\"Rotate Down 360\"}"},CustomModelData:5420115}}}
execute if score @s mb_move_type matches 6 run data merge entity @s {Item:{tag:{mb-move-type:1,display:{Name:"{\"text\":\"Rotate Clockwise\"}"},CustomModelData:5420110}}}



data merge entity @s {PickupDelay:0s}