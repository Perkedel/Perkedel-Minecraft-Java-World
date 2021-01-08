#Giving armour effects
effect give @s[nbt=!{ActiveEffects: [{Id: 22b, Amplifier: 0b}]}] minecraft:absorption 1000000 0 true
effect give @s minecraft:resistance 10 1 true

#Giving tool/weapon effects
effect give @s[nbt={HandItems:[{id:"minecraft:shield"}]}] minecraft:resistance 10 2 true
effect give @s[nbt={HandItems:[{id:"minecraft:diamond_sword"}]}] minecraft:strength 10 0 true