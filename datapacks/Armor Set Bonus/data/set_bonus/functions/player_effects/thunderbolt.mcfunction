#Setting Armour ID
scoreboard players set @s sb.aID 9

#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 21b, Amplifier: 1b}]}] minecraft:health_boost 1000000 1 true
effect give @s minecraft:resistance 1 1 true
effect give @s minecraft:fire_resistance 1 0 true

#Giving tool/weapon effects
effect give @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] minecraft:resistance 1 2 true
execute as @s[nbt={SelectedItem:{id:"minecraft:trident", tag:{Enchantments:[{lvl:3s, id:"minecraft:riptide"}]}}}] run weather rain 1