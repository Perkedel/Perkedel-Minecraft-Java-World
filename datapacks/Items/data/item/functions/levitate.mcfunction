execute store result score @s value run data get entity @s Motion[1] 1000
scoreboard players add @s value 1200
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s value
execute if entity @s[type=player] run effect give @s levitation 1 20 true