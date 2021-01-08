#Setting Armour ID
scoreboard players set @s sb.aID 10

#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 21b, Amplifier: 0b}]}] minecraft:health_boost 1000000 0 true
effect give @s minecraft:resistance 1 1 true

#Giving tool/weapon effects
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] minecraft:resistance 1 2 true
effect give @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] minecraft:haste 1 0 true
effect give @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] minecraft:strength 1 0 true