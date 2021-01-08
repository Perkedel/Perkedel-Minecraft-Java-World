execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1234568}}}] run function item:swap
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1234568}}]}] run function item:swap
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1234569}}}] unless data entity @s Inventory[{Slot:103b}] run function item:equip/goggles
scoreboard players set @s item.use 0