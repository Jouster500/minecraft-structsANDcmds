##########################################
# Author: Jouster500
# Date: 8/27/2019
# This function encapsulates the banking storage calls.
# Runs with respect to the closest valid player
##########################################
# Run the xplevels grab only on players who wish to store xp
execute if score @p bankStore matches 1.. store result score @p[scores={bankStore=1..}] xpLevels run xp query @p levels
# Store the xpoints only if the xPoints of a player is 0 and players want to store.
# This prevents infinite loops should we hit the end of a level (As xp points is only calculated for
# the given level, not the overall) 
execute if score @p[scores={xPoints=0}] bankStore matches 1.. store result score @p[scores={bankStore=1..}] xPoints run xp query @p[scores={bankStore=1..}] points
# Clean up the trigger score should there be nothing to store. Prevents triggering the loop
execute if score @p[scores={bankStore=0..,xPoints=0}] xpLevels matches 0 run scoreboard players set @p[scores={bankStore=1..}] bankStore 0
# If the player has xPoints >= 1, add a point to the bank.
# TODO: Implement larger increment checks to reduce number of times looped!
execute if score @p[scores={bankStore=1..}] xPoints matches 1.. run scoreboard players add @p[scores={xPoints=1..,bankStore=1..}] bank 1
# Remove an experience point from the player thats withdrawing
execute if score @p[scores={bankStore=1..}] xPoints matches 1.. run xp add @p[scores={bankStore=1..}] -1 points
# Remove an xPoint value from players withdrawing and with valid xPoints (prevents neggatives)
scoreboard players remove @p[scores={xPoints=1..,bankStore=1..}] xPoints 1
# If there are more levels for this player to go, reincrement xPoints and reloop. 
execute if score @p[scores={bankStore=1..,xPoints=0}] xpLevels matches 1.. run scoreboard players add @p[scores={bankStore=1..}] xPoints 1
# Remove the score to store. 
scoreboard players remove @p[scores={bankStore=1..}] bankStore 1
# Re-enable the trigger for the players
scoreboard players enable @a bankStore
