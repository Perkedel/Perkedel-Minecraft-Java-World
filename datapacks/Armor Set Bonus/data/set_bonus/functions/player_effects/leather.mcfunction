#Setting Armour ID
scoreboard players set @s sb.aID 1

#Giving armour effects
effect give @s[scores={sb.sat=..5}] minecraft:saturation 1 0 true
effect give @s minecraft:speed 1 0 true

#Giving tool/weapon effects
effect give @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] minecraft:haste 1 0 true