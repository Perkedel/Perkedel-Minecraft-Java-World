#Reseting Armour ID
scoreboard players set @a sb.aID 0

#Checking for full set
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:leather_boots"}, {Slot:101b, id:"minecraft:leather_leggings"}, {Slot:102b, id:"minecraft:leather_chestplate"}, {Slot:103b, id:"minecraft:leather_helmet"}]}] at @s run function set_bonus:player_effects/leather
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:chainmail_boots"}, {Slot:101b, id:"minecraft:chainmail_leggings"}, {Slot:102b, id:"minecraft:chainmail_chestplate"}, {Slot:103b, id:"minecraft:chainmail_helmet"}]}] at @s run function set_bonus:player_effects/chainmail
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:iron_boots"}, {Slot:101b, id:"minecraft:iron_leggings"}, {Slot:102b, id:"minecraft:iron_chestplate"}, {Slot:103b, id:"minecraft:iron_helmet"}]}] at @s run function set_bonus:player_effects/iron
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:golden_boots"}, {Slot:101b, id:"minecraft:golden_leggings"}, {Slot:102b, id:"minecraft:golden_chestplate"}, {Slot:103b, id:"minecraft:golden_helmet"}]}] at @s run function set_bonus:player_effects/gold
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:diamond_boots"}, {Slot:101b, id:"minecraft:diamond_leggings"}, {Slot:102b, id:"minecraft:diamond_chestplate"}, {Slot:103b, id:"minecraft:diamond_helmet"}]}] at @s run function set_bonus:player_effects/diamond
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:netherite_boots"}, {Slot:101b, id:"minecraft:netherite_leggings"}, {Slot:102b, id:"minecraft:netherite_chestplate"}, {Slot:103b, id:"minecraft:netherite_helmet"}]}] at @s run function set_bonus:player_effects/netherite

#Checking for extra sets
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:diamond_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}, {Slot:101b, id:"minecraft:diamond_leggings"}, {Slot:102b, id:"minecraft:diamond_chestplate"}, {Slot:103b, id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:player_effects/turtle
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}, {Slot:101b, id:"minecraft:netherite_leggings"}, {Slot:102b, id:"minecraft:netherite_chestplate"}, {Slot:103b, id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:player_effects/master_turtle
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}, {lvl:4s, id:"minecraft:feather_falling"}]}}, {Slot:101b, id:"minecraft:netherite_leggings"}, {Slot:102b, id:"minecraft:elytra"}, {Slot:103b, id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:player_effects/thunderbolt
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:diamond_boots"}, {Slot:101b, id:"minecraft:diamond_leggings"}, {Slot:102b, id:"minecraft:elytra"}, {Slot:103b, id:"minecraft:diamond_helmet"}]}] at @s run function set_bonus:player_effects/elytra
execute as @a if entity @s[nbt={Inventory: [{Slot:100b, id:"minecraft:netherite_boots"}, {Slot:101b, id:"minecraft:netherite_leggings"}, {Slot:102b, id:"minecraft:elytra"}, {Slot:103b, id:"minecraft:netherite_helmet"}]}] at @s run function set_bonus:player_effects/ultimate_elytra

#Removing effects
execute as @a[nbt={ActiveEffects:[{ShowIcon:0b, ShowParticles:0b, Id:21b}]}] run function set_bonus:effect_clear

#Runs this function again in 19 ticks (0.95 seconds)
schedule function set_bonus:check_player 19t