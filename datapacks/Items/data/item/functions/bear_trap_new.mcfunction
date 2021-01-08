tag @s remove new_trap
tag @s add active
data merge entity @s {Marker:1,Invulnerable:1,DisabledSlots:63,Invisible:1,ArmorItems:[{},{},{},{id:"ravager_spawn_egg",Count:1,tag:{CustomModelData:1234567,display:{Name:'{"text":"Bear Trap","italic":"false"}'},EntityTag:{id:"armor_stand",Tags:["bear_trap","new_trap"]}}}]}
playsound block.lantern.place block @a ~ ~ ~ 1 0 1