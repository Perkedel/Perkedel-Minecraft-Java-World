#Setting Armour ID
scoreboard players set @s sb.aID 11

#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 21b, Amplifier: 1b}]}] minecraft:health_boost 1000000 1 true
effect give @s minecraft:resistance 1 2 true
effect give @s minecraft:fire_resistance 1 0 true
effect clear @s minecraft:levitation

#Giving tool/weapon effects
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] minecraft:resistance 1 3 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] minecraft:strength 1 0 true