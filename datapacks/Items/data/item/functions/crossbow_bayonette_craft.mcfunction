advancement revoke @s only item:crossbow_bayonette
recipe take @s item:crossbow_bayonette
clear @s book 1
give @s crossbow{CustomModelData:1000000,display:{Name:'{"text":"Crossbow with Bayonette","italic":"false"}'},EntityTag:{Tags:["bayonette"]},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,UUID:[I;287,680,868,805],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;287,680,868,804],Slot:"mainhand"}]}