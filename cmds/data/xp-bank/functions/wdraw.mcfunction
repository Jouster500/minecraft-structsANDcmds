##############################################
# Author: Jouster500
# Date: 8/27/2019
# This function is responsible for getting normal players
# to grab their banked experience!
##############################################
# If the point has stuff in the bank and wishes to withdraw
# Give the player an xp point 
execute if score @p[scores={bank=1..}] bankWdraw matches 1.. run xp add @p[scores={bankWdraw=1..,bank=1..}] 1 points
# Remove 1 from a player who is withdrawing 
# and has stuff in the bank (prevents neggatives)
scoreboard players remove @p[scores={bankWdraw=1..,bank=1..}] bank 1
# Remove 1 from the player thats withdrawing to prep for next increment
scoreboard players remove @p[scores={bankWdraw=1..}] bankWdraw 1
# Stop looping through if theres nothing to withdraw 
execute if score @p[scores={bankWdraw=1..}] bank matches ..0 run scoreboard players set @p[scores={bankWdraw=1..}] bankWdraw 0
# Re-enable the trigger 
scoreboard players enable @a bankWdraw
