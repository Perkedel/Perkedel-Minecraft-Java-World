#Setting Armour ID
scoreboard players set @s sb.aID 12

#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 21b, Amplifier: 4b}]}] minecraft:health_boost 1000000 4 true
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 4b}]}] minecraft:absorption 60 4 true
effect give @s minecraft:resistance 1 3 true
effect give @s minecraft:speed 1 1 true
effect give @s minecraft:water_breathing 1 0 true

#Giving conditional armour effects
execute as @s[nbt={Inventory:[{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}]}] if block ~ ~ ~ minecraft:water run effect give @s minecraft:dolphins_grace 1 0 true
execute as @s[nbt={Inventory:[{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:frosted_ice run effect give @s minecraft:speed 1 3 true
execute as @s[nbt={Inventory:[{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:ice run effect give @s minecraft:speed 1 3 true
execute as @s[nbt={Inventory:[{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:packed_ice run effect give @s minecraft:speed 1 3 true
execute as @s[nbt={Inventory:[{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:blue_ice run effect give @s minecraft:speed 1 3 true

#Giving tool/weapon effects
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] minecraft:resistance 1 4 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe", tag:{Enchantments:[{lvl:5s, id:"minecraft:efficiency"}]}}}] minecraft:haste 1 3 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_axe", tag:{Enchantments:[{lvl:5s, id:"minecraft:efficiency"}]}}}] minecraft:haste 1 3 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel", tag:{Enchantments:[{lvl:5s, id:"minecraft:efficiency"}]}}}] minecraft:haste 1 3 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_sword", tag:{Enchantments:[{lvl:5s, id:"minecraft:sharpness"}]}}}] minecraft:strength 1 1 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_axe", tag:{Enchantments:[{lvl:5s, id:"minecraft:sharpness"}]}}}] minecraft:strength 1 1 true