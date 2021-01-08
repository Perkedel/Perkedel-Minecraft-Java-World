execute if predicate item:ice_boots run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 frosted_ice replace water[level=0]
execute if predicate item:ice_boots run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 obsidian replace lava[level=0]
execute if predicate item:ice_boots run effect give @s fire_resistance 1 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:totem_of_undying",tag:{CustomModelData:1234567}}}] run effect give @s invisibility 1 0 true
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",tag:{CustomModelData:1234567}}]}] run effect give @s invisibility 1 0 true
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1234569}}]}] run effect give @s night_vision 1 0 true