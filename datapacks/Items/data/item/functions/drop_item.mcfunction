execute if entity @s[nbt={SelectedItem:{}}] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},Tags:["selected"]}
data modify entity @e[tag=selected,limit=1,sort=nearest] Item set from entity @s SelectedItem
tag @e[tag=selected] remove selected
execute if entity @s[nbt={HandItems:[{}]}] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},Tags:["selected"]}
data modify entity @e[tag=selected,limit=1,sort=nearest] Item set from entity @s HandItems[0]
tag @e[tag=selected] remove selected
replaceitem entity @s weapon.mainhand air