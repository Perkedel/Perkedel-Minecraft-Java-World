summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick", Count:1b},PickupDelay:0s, Tags:[edta_mb_todo]}
data modify entity @e[type=minecraft:item,tag=edta_mb_todo,sort=nearest,limit=1] Item.tag set from entity @s Item.tag
data merge entity @s {PickupDelay:0s}
tag @e[tag=edta_mb_todo] remove edta_mb_todo