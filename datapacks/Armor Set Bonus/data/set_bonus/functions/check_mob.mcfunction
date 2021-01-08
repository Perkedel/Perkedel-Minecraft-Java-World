#Checking for full set
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:leather_boots"}, {id:"minecraft:leather_leggings"}, {id:"minecraft:leather_chestplate"}, {id:"minecraft:leather_helmet"}]}] at @s run function set_bonus:mob_effects/leather
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:chainmail_boots"}, {id:"minecraft:chainmail_leggings"}, {id:"minecraft:chainmail_chestplate"}, {id:"minecraft:chainmail_helmet"}]}] at @s run function set_bonus:mob_effects/chainmail
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:iron_boots"}, {id:"minecraft:iron_leggings"}, {id:"minecraft:iron_chestplate"}, {id:"minecraft:iron_helmet"}]}] at @s run function set_bonus:mob_effects/iron
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:golden_boots"}, {id:"minecraft:golden_leggings"}, {id:"minecraft:golden_chestplate"}, {id:"minecraft:golden_helmet"}]}] at @s run function set_bonus:mob_effects/gold
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:diamond_boots"}, {id:"minecraft:diamond_leggings"}, {id:"minecraft:diamond_chestplate"}, {id:"minecraft:diamond_helmet"}]}] at @s run function set_bonus:mob_effects/diamond
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:netherite_boots"}, {id:"minecraft:netherite_leggings"}, {id:"minecraft:netherite_chestplate"}, {id:"minecraft:netherite_helmet"}]}] at @s run function set_bonus:mob_effects/netherite

#Checking for extra sets
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:diamond_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}, {id:"minecraft:diamond_leggings"}, {id:"minecraft:diamond_chestplate"}, {id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:mob_effects/turtle
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}]}}, {id:"minecraft:netherite_leggings"}, {id:"minecraft:netherite_chestplate"}, {id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:mob_effects/master_turtle
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:netherite_boots", tag:{Enchantments:[{lvl:3s, id:"minecraft:depth_strider"}, {lvl:4s, id:"minecraft:feather_falling"}]}}, {id:"minecraft:netherite_leggings"}, {id:"minecraft:elytra"}, {id:"minecraft:turtle_helmet", tag:{Enchantments:[{lvl:3s, id:"minecraft:respiration"},{lvl:1s, id:"minecraft:aqua_affinity"}]}}]}] at @s run function set_bonus:mob_effects/thunderbolt
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:diamond_boots"}, {id:"minecraft:diamond_leggings"}, {id:"minecraft:elytra"}, {id:"minecraft:diamond_helmet"}]}] at @s run function set_bonus:mob_effects/elytra
execute as @e[type=!minecraft:player] if entity @s[nbt={ArmorItems: [{id:"minecraft:netherite_boots"}, {id:"minecraft:netherite_leggings"}, {id:"minecraft:elytra"}, {id:"minecraft:netherite_helmet"}]}] at @s run function set_bonus:mob_effects/ultimate_elytra

#Runs this function again in 199 ticks (9.95 seconds)
schedule function set_bonus:check_mob 199t