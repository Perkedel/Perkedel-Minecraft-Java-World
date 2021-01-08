function item:raycast_start
execute as @e[tag=raycast] at @s as @e[tag=!raycast,distance=0..1,limit=1,sort=nearest] run tag @s add swap
kill @e[tag=raycast]
summon armor_stand ~ ~ ~ {Invisible:1,Small:1,Tags:["player_pos"]}
execute at @s run playsound entity.zombie.infect player @a ~ ~ ~ 1 1 1
execute at @s run particle portal ~ ~1 ~ 0.2 0.5 0.2 0.4 50 force
tp @e[tag=player_pos,limit=1,sort=nearest] @s
tp @s @e[tag=swap,limit=1,sort=nearest]
tp @e[tag=swap,limit=1,sort=nearest] @e[tag=player_pos,limit=1,sort=nearest]
kill @e[tag=player_pos]
tag @e[tag=swap] remove swap
execute at @s run playsound entity.zombie.infect player @a ~ ~ ~ 1 1 1
execute at @s run particle portal ~ ~1 ~ 0.2 0.5 0.2 0.4 50 force