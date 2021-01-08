execute anchored feet run summon armor_stand ^ ^ ^8 {Tags:["push"]}
execute store result score @s posx run data get entity @s Pos[0] 1000
execute store result score @s posy run data get entity @s Pos[1] 1000
execute store result score @s posz run data get entity @s Pos[2] 1000
execute store result score @s pushx run data get entity @e[tag=push,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s pushy run data get entity @e[tag=push,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s pushz run data get entity @e[tag=push,limit=1,sort=nearest] Pos[2] 1000
scoreboard players operation @s pushx -= @s posx
scoreboard players operation @s pushy -= @s posy
scoreboard players operation @s pushz -= @s posz
scoreboard players operation push pushx = @s pushx
scoreboard players operation push pushy = @s pushy
scoreboard players operation push pushz = @s pushz
#execute store result entity @e[tag=throwing_ice,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players get @s pushx
#execute store result entity @e[tag=throwing_ice,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players get @s pushy
#execute store result entity @e[tag=throwing_ice,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players get @s pushz
kill @e[tag=push]