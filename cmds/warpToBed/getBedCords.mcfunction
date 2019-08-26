##################################################################################
# Author: Jouster500
# Data: 8/28/2019
# Requires: dummy spawnX, spawnY, spawnZ, and bedSlept pointing to sleep_in_bed stat
# Gets and stores players recently slept bed cordinates
###################################################################################
# Looks for a player that recently slept in a bed. This is the looping function. If in a cmd block
#scoreboard players get @p[scores={bedSlept=1..},limit=1] bedSlept
# Summon an entity with the respect tag
summon minecraft:area_effect_cloud ~ ~5 ~ {Tags:["bedSlept"]}
# Teleport the recently summoned entity to closest player that slept.
tp @e[tag=bedSlept,limit=1] @p[scores={bedSlept=1..}]
# Tell the player who is getting their cords saved
tell @p[scores={bedSlept=1..}] Your home position is to be saved...
# As the entity, store spawnX value to players current x position
execute as @e[tag=bedSlept,limit=1] store result score @s spawnX run data get entity @e[tag=bedSlept,limit=1] Pos[0]
# Swap the entities spawnX with the players spawnX
scoreboard players operation @e[type=minecraft:player,scores={bedSlept=1..}] spawnX >< @e[tag=bedSlept,limit=1] spawnX
# Same as above, this time for Y
execute as @e[tag=bedSlept,limit=1] store result score @s spawnY run data get entity @e[tag=bedSlept,limit=1] Pos[1]
# ^
scoreboard players operation @e[type=minecraft:player,scores={bedSlept=1..}] spawnY >< @e[tag=bedSlept,limit=1] spawnY
# Same as above, this time for Z
execute as @e[tag=bedSlept,limit=1] store result score @s spawnZ run data get entity @e[tag=bedSlept,limit=1] Pos[2]
# ^
scoreboard players operation @e[type=minecraft:player,scores={bedSlept=1..}] spawnZ >< @e[tag=bedSlept,limit=1] spawnZ
# Set the players bedSlept scoreboard back to 0 so they dont accidentally trigger an infinite loop.
scoreboard players set @p[scores={bedSlept=1..}] bedSlept 0
