#####################################
# Author: Jouster500
# Date: 8/28/2019
# Intializes the scoreboards needed for the bed warps functions
# Please note, players will still need to be added to all scoreboards
# after an initialization run. 
#####################################
# Bed x cord
scoreboard objectives add spawnX dummy
# Bed y cord
scoreboard objectives add spawnY dummy
# Bed z cord
scoreboard objectives add spawnZ dummy
# This records the number of times a player has slept in a bed.
scoreboard objectives add bedSlept minecraft.custom:minecraft.sleep_in_bed
# This provides normal users access to trigger such to call the warp
scoreboard objectives add warpBed trigger
# Initializes the scoreboards for all players on the server
scoreboard players set @a spawnX 0
scoreboard players set @a spawnY 0
scoreboard players set @a spawnZ 0
scoreboard players set @a bedSlept 0
scoreboard players set @a warpBed 0
