scoreboard players operation @s pushx = push pushx
scoreboard players operation @s pushy = push pushy
scoreboard players operation @s pushz = push pushz
execute store result score @s value run data get entity @s Motion[0] 1000
scoreboard players operation @s pushx += @s value
execute store result score @s value run data get entity @s Motion[1] 1000
scoreboard players operation @s pushy += @s value
execute store result score @s value run data get entity @s Motion[2] 1000
scoreboard players operation @s pushz += @s value
execute store result entity @s Motion[0] double 0.002 run scoreboard players get @s pushx
execute store result entity @s Motion[1] double 0.002 run scoreboard players get @s pushy
execute store result entity @s Motion[2] double 0.002 run scoreboard players get @s pushz