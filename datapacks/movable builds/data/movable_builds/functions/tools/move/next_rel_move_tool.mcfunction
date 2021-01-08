execute store result score @s mb_move_type run data get entity @s Item.tag.mb-move-type

execute if score @s mb_move_type matches 1 run data merge entity @s {Item:{tag:{mb-move-type:2,display:{Name:"{\"text\":\"Backwards\"}"},CustomModelData:5420121}}}
execute if score @s mb_move_type matches 2 run data merge entity @s {Item:{tag:{mb-move-type:3,display:{Name:"{\"text\":\"Right\"}"},CustomModelData:5420122}}}
execute if score @s mb_move_type matches 3 run data merge entity @s {Item:{tag:{mb-move-type:4,display:{Name:"{\"text\":\"Left\"}"},CustomModelData:5420123}}}
execute if score @s mb_move_type matches 4 run data merge entity @s {Item:{tag:{mb-move-type:5,display:{Name:"{\"text\":\"Up\"}"},CustomModelData:5420124}}}
execute if score @s mb_move_type matches 5 run data merge entity @s {Item:{tag:{mb-move-type:6,display:{Name:"{\"text\":\"Down\"}"},CustomModelData:5420125}}}
execute if score @s mb_move_type matches 6 run data merge entity @s {Item:{tag:{mb-move-type:1,display:{Name:"{\"text\":\"Forward\"}"},CustomModelData:5420120}}}



data merge entity @s {PickupDelay:0s}