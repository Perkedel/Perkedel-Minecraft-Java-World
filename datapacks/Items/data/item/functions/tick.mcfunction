schedule function item:tick 1t append
#advancement revoke @s only item:tick
execute as @a at @s run function item:sprint
execute as @e at @s unless score @s item.spawned matches 1 run function item:spawn
execute as @a at @s run function item:raycast_nomob_start
execute as @e[tag=raycast] at @s if block ~ ~ ~ carved_pumpkin if block ~ ~-1 ~ blue_ice if block ~ ~-2 ~ blue_ice if block ~-1 ~-1 ~ blue_ice if block ~1 ~-1 ~ blue_ice run function item:ice_golem_x
execute as @e[tag=raycast] at @s if block ~ ~ ~ carved_pumpkin if block ~ ~-1 ~ blue_ice if block ~ ~-2 ~ blue_ice if block ~ ~-1 ~-1 blue_ice if block ~ ~-1 ~1 blue_ice run function item:ice_golem_z
kill @e[tag=raycast]
execute as @e[tag=ice_golem] at @s run function item:ice_golem
execute as @a at @s run function item:item
execute as @e store result score @s item.health run data get entity @s Health
execute as @a at @s if score @s item.attack matches 1.. run function item:attack
execute as @e store result score @s item.rec_health run data get entity @s Health
execute as @a at @s if score @s item.use matches 1.. run function item:use
execute as @e[tag=new_trap] at @s run function item:bear_trap_new
execute as @e[tag=bear_trap] at @s run function item:bear_trap
execute as @a at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace cobblestone_wall[up=false,east=none,west=none,north=none,south=none]