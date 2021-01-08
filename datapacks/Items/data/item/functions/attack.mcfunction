tag @s add attacker
execute if predicate item:levitation as @e[tag=!attacker] if score @s item.rec_health > @s item.health run function item:levitate
execute if entity @s[nbt={SelectedItem:{tag:{EntityTag:{Tags:["hook"]}}}}] as @e[tag=!attacker] if score @s item.rec_health > @s item.health run function item:drop_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{CustomModelData:1234567}}}] run function item:push
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{CustomModelData:1234567}}}] as @e[tag=!attacker] if score @s item.rec_health > @s item.health run function item:push_add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{CustomModelData:1234567}}}] run function item:push
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{CustomModelData:1234567}}}] as @e[tag=!attacker] if score @s item.rec_health > @s item.health run function item:push_add
scoreboard players set @s item.attack 0
tag @s remove attacker