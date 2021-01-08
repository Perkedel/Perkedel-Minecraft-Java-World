execute unless predicate item:sprint run scoreboard players set @s runtimer 0
execute unless predicate item:sprint run attribute @s generic.attack_damage modifier remove f0000000-0-0-0-0
execute if predicate item:sprint if entity @s[nbt={SelectedItem:{tag:{EntityTag:{Tags:["bayonette"]}}}}] run attribute @s generic.attack_damage modifier add f0000000-0-0-0-0 attack 4 add