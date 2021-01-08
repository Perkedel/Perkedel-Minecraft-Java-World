execute unless data entity @s ArmorItems[3].id run kill @s
execute unless score bear_traps_work_on_player value matches 1 if entity @s[tag=active] if entity @e[tag=!bear_trap,distance=0...5,type=!player] run function item:bear_trap_activate
execute if score bear_traps_work_on_player value matches 1 if entity @s[tag=active] if entity @e[tag=!bear_trap,distance=0...5] run function item:bear_trap_activate
execute if entity @p[distance=0..1,predicate=item:sneak] run function item:bear_trap_pickup
execute if entity @s[tag=active] if entity @e[type=player,distance=0..5] run particle crit ~ ~.05 ~ .3 .05 .3 0.05 1 force