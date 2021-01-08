advancement revoke @s only item:iron_hook
recipe take @s item:iron_hook
clear @s iron_ingot 1
give @s iron_sword{CustomModelData:1000000,display:{Name:'{"text":"Iron Hook","color":"#ffffff","italic":"false"}'},EntityTag:{Tags:["hook"]},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2.5,UUID:[I;135,4,9,654],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Amount:4,UUID:[I;135,4,9,654],Slot:"mainhand"}]}