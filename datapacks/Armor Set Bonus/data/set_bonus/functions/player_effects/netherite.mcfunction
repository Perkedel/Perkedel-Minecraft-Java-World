#Setting Armour ID
scoreboard players set @s sb.aID 6

#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 21b, Amplifier: 1b}]}] minecraft:health_boost 1000000 1 true
effect give @s minecraft:fire_resistance 1 0 true
effect give @s minecraft:resistance 1 2 true
effect clear @s minecraft:wither

#Giving tool/weapon effects
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] minecraft:resistance 1 3 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] minecraft:strength 1 0 true

#Checking for sub set
execute as @s[nbt={Inventory: [{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}, {lvl:4s, id:"minecraft:feather_falling"}, {lvl:3s, id:"minecraft:soul_speed"}]}}, {Slot:101b, id:"minecraft:netherite_leggings", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}]}}, {Slot:102b, id:"minecraft:netherite_chestplate", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}]}}, {Slot:103b, id:"minecraft:netherite_helmet", tag:{Enchantments:[{lvl:1s, id:"minecraft:mending"}, {lvl:3s, id:"minecraft:unbreaking"}, {lvl:4s, id:"minecraft:protection"}, {lvl:3s, id:"minecraft:thorns"}, {lvl:3s, id:"minecraft:respiration"}, {lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] run function set_bonus:player_effects/god