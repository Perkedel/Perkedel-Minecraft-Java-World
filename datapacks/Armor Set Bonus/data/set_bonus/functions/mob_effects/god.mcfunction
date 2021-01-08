#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 9b}]}] minecraft:absorption 120 9 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:speed 10 1 true
effect give @s minecraft:water_breathing 10 0 true

#Giving conditional armour effects
execute as @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}]}] if block ~ ~ ~ minecraft:water run effect give @s minecraft:dolphins_grace 10 0 true
execute as @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:frosted_ice run effect give @s minecraft:speed 10 3 true
execute as @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:ice run effect give @s minecraft:speed 10 3 true
execute as @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:packed_ice run effect give @s minecraft:speed 10 3 true
execute as @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:2s, id:"minecraft:frost_walker"}]}}]}] if block ~ ~-1 ~ minecraft:blue_ice run effect give @s minecraft:speed 10 3 true

#Giving tool/weapon effects
effect give @s[nbt={HandItems:[{id:"minecraft:shield"}]}] minecraft:resistance 10 4 true
effect give @s[nbt={HandItems:[{id:"minecraft:netherite_sword", tag:{Enchantments:[{lvl:5s, id:"minecraft:sharpness"}]}}]}] minecraft:strength 10 1 true
effect give @s[nbt={HandItems:[{id:"minecraft:netherite_axe", tag:{Enchantments:[{lvl:5s, id:"minecraft:sharpness"}]}}]}] minecraft:strength 10 1 true