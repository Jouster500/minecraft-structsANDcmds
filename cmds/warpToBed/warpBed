# Note, this function does not execute in the context of its function, 
# rather it is the representation of cmds in each cmd block
# Get any player who recently activated the bed warp trigger scoreboard
data get entity @a[scores={warpBed=1..},limit=1]
# Summon a succesful entity with a tag specialized to accomadate the function
summon minecraft:area_effect_cloud ~ ~2 ~ {Tags:["warpBed"]}
# Move the entity to the players stored Spawn cordinates
execute store result entity @e[tag=warpBed,limit=1] Pos[0] double 1 run scoreboard players get @p[scores={warpBed=1..}] spawnX
execute store result entity @e[tag=warpBed,limit=1] Pos[1] double 1 run scoreboard players get @p[scores={warpBed=1..}] spawnY
execute store result entity @e[tag=warpBed,limit=1] Pos[2] double 1 run scoreboard players get @p[scores={warpBed=1..}] spawnZ
# Teleport the nearest player to the entity in question
tp @p[scores={warpBed=1..}] @e[tag=warpBed,limit=1]
# Reset the trigger value to 0
scoreboard players set @p[scores={warpBed=1..}] warpBed 0
# Re-enable the trigger for players to use
scoreboard players enable @a warpBed
