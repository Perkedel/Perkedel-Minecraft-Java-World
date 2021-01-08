#Setting Armour ID
scoreboard players set @s sb.aID 4

#Giving armour effects
effect give @s minecraft:regeneration 1 0 true
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 2b}]}] minecraft:absorption 60 2 true
effect give @s minecraft:slowness 1 0 true

#Giving tool/weapon effects
effect give @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] minecraft:haste 1 2 true
effect give @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] minecraft:luck 1 9 true
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:fishing_rod"}]}] minecraft:luck 1 9 true