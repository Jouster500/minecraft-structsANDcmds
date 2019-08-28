#######################################
# Author: Jouster500
# Date: 8/29/2019
# This initializes the scoreboards for use with the banking feature
#######################################
# Initialize the banking scoreboard
scoreboard objectives add bank dummy
# Initialize the bank storage command so normal players can trigger it
scoreboard objectives add bankStore trigger
# Init bank withdraw command
scoreboard objectives add bankWdraw trigger
# Init the xPoints board for reading xperience points
scoreboard objectives add xPoints dummy
# Init the xpLevels board for reading experience levels
scoreboard objectives add xpLevels dummy
# Add everyone to the scoreboards 
scoreboard players add @a bank 0
scoreboard players add @a bankStore 0
scoreboard players add @a bankWdraw 0
scoreboard players add @a xPoints 0
scoreboard players add @a xpLevels 0
