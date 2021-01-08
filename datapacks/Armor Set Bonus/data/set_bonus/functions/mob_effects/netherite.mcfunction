#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 1b}]}] minecraft:absorption 1000000 1 true
effect give @s minecraft:fire_resistance 10 0 true
effect give @s minecraft:resistance 10 2 true

#Giving tool/weapon effects
effect give @s[nbt={HandItems:[{id:"minecraft:shield"}]}] minecraft:resistance 1 3 true
effect give @s[nbt={HandItems:[{id:"minecraft:netherite_sword"}]}] minecraft:strength 1 0 true

#Checking for sub set
execute as @s[nbt={ArmorItems: [{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}, {lvl:4s, id:"minecraft:feather_falling"}, {lvl:3s, id:"minecraft:soul_speed"}]}}, {id:"minecraft:netherite_leggings", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}]}}, {id:"minecraft:netherite_chestplate", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}]}}, {id:"minecraft:netherite_helmet", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}, {lvl:3s, id:"minecraft:respiration"}, {lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] run function set_bonus:mob_effects/god