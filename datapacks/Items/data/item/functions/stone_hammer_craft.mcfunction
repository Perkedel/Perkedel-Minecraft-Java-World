advancement revoke @s only item:stone_hammer
recipe take @s item:stone_hammer
clear @s cobblestone 1
give @s stone_sword{CustomModelData:1234567,display:{Name:'{"text":"Stone Hammer","color":"#ffffff","italic":"false"}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:10,UUID:[I;123,456,987,654],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Amount:-0.9,Operation:1,UUID:[I;123,456,987,654],Slot:"mainhand"}]}