#init if new demo
execute unless entity @s[tag=demo] if entity @s[type=armor_stand,tag=edta_movable_build,tag=center] run scoreboard players set @s mb_timer 100
execute unless entity @s[tag=demo] if entity @s[type=armor_stand,tag=edta_movable_build,tag=center] run tag @s add demo

# actually do the demo

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=76..100}] at @s run tp @s ~0.5 ~0.3 ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=51..75}] at @s run tp @s ~ ~ ~0.5 ~14.4 ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=26..50}] at @s run tp @s ~-0.5 ~-0.3 ~ ~ ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=13..25}] at @s run tp @s ~ ~ ~-0.5 ~ ~-5
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=1..12}] at @s run tp @s ~ ~ ~-0.5 ~ ~5.4166

scoreboard players remove @e[type=armor_stand,tag=edta_movable_build,tag=demo] mb_timer 1

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo] at @s run function movable_builds:update/update_position

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=0}] run tag @s remove demo

execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=demo] run schedule function movable_builds:move/demo 1
