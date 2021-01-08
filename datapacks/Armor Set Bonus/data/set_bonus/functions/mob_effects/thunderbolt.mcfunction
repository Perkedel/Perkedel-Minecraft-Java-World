#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 1b}]}] minecraft:absorption 1000000 1 true
effect give @s minecraft:resistance 10 1 true
effect give @s minecraft:fire_resistance 10 0 true

#Giving tool/weapon effects
effect give @s[nbt={HandItems:[{id:"minecraft:shield"}]}] minecraft:resistance 10 2 true
execute as @s[nbt={HandItems:[{id:"minecraft:trident", tag:{Enchantments:[{lvl:3s, id:"minecraft:riptide"}]}}]}] run weather rain 10