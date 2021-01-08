function item:find_my_player
fill ~ ~ ~ ~ ~-2 ~ air
#this line fixes a glitch
summon iron_golem ~ ~-2 ~ {AngerTime:-1,Tags:["ice_golem"],DeathLootTable:"item:ice_golem"}