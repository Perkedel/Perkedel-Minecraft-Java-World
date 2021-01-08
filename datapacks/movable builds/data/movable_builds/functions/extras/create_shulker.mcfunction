summon shulker ~ ~1.5 ~ {Tags:[edta_movable_build],NoGravity:1b,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,DeathLootTable:empty,ActiveEffects:[{Id:14,Amplifier:0f,Duration:19999999999980f,ShowParticles:0b}]}
execute as @e[type=shulker,tag=edta_movable_build,tag=!idgiven,limit=1] at @s run function movable_builds:extras/set_properties
