advancement revoke @s only item:iron_hammer
recipe take @s item:iron_hammer
clear @s iron_ingot 1
give @s iron_sword{CustomModelData:1234567,display:{Name:'{"text":"Iron Hammer","color":"#ffffff","italic":"false"}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:12,UUID:[I;123,456,987,654],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Amount:-0.9,Operation:1,UUID:[I;123,456,987,654],Slot:"mainhand"}]}