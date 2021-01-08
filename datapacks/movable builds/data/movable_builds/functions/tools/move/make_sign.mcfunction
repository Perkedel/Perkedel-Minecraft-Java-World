setblock ~ ~ ~ minecraft:birch_sign{Text1:'{"score":{"name":"$current_id","objective":"mb_build_id"}}'}
data merge block ~ ~ ~ {Text1:'["",{"text":"id: "},{"score":{"name":"$current_id","objective":"mb_build_id"}}]'}

data modify entity @s Item.tag.display.Lore append from block ~ ~ ~ Text1

setblock ~ ~ ~ minecraft:air