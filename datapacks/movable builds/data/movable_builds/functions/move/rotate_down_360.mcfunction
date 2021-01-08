#this is an attempt to make rotating up/down possible in a full circle. It does not look very good

tp @s ~ ~ ~ ~ ~10
scoreboard players add @s mb_timer 1
execute if entity @s[scores={mb_timer=18}] run tp @s ~ ~ ~ ~ -90

execute if entity @s[scores={mb_timer=36..}] run tp @s ~ ~ ~ ~ -90
execute if entity @s[scores={mb_timer=36..}] run scoreboard players set @s mb_timer 0

execute if entity @s[scores={mb_timer=..17}] run function movable_builds:update/update_position
execute if entity @s[scores={mb_timer=18..}] run function movable_builds:update/update_position_flipped
