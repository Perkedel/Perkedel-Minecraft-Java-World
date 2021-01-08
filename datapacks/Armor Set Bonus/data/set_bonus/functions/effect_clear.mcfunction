#Resetting Effect Level
scoreboard players set @s sb.eLv 0

#Giving apropriate values for Health Boost
#Health Boost
scoreboard players set @s[scores={sb.aID=5}] sb.eLv 1
scoreboard players set @s[scores={sb.aID=7}] sb.eLv 1
scoreboard players set @s[scores={sb.aID=10}] sb.eLv 1
#Health Boost II
scoreboard players set @s[scores={sb.aID=6}] sb.eLv 2
scoreboard players set @s[scores={sb.aID=8}] sb.eLv 2
scoreboard players set @s[scores={sb.aID=9}] sb.eLv 2
scoreboard players set @s[scores={sb.aID=11}] sb.eLv 2
#Health Boost V
scoreboard players set @s[scores={sb.aID=12}] sb.eLv 5

#Clearing Health Boost
#If effect level is 0
effect clear @s[scores={sb.eLv=0}] minecraft:health_boost
#If effect level doesn't match actual level
execute if entity @s[nbt={ActiveEffects:[{Id:21b, Amplifier:0b}]}] unless entity @s[scores={sb.eLv=1}] run effect clear @s minecraft:health_boost
execute if entity @s[nbt={ActiveEffects:[{Id:21b, Amplifier:1b}]}] unless entity @s[scores={sb.eLv=2}] run effect clear @s minecraft:health_boost
execute if entity @s[nbt={ActiveEffects:[{Id:21b, Amplifier:4b}]}] unless entity @s[scores={sb.eLv=5}] run effect clear @s minecraft:health_boost