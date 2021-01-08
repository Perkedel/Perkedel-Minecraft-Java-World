summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick", Count:1b,tag:{mb-use-type:8, mb-move-type:1,mb-build-id:-1,display:{Name:"{\"text\":\"x+\"}",Lore:["{\"text\":\"x, y, z movement tool.\"}","{\"text\":\"Drop to toggle.\"}"]},CustomModelData:5420130}},PickupDelay:0s, Tags:[edta_mb_todo]}

execute as @e[type=minecraft:item,tag=edta_mb_todo,limit=1] run function movable_builds:tools/move/add_build_id

tag @e[tag=edta_mb_todo] remove edta_mb_todo