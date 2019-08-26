These commands allow a normal server player to teleport to
the last bed they slept at. 

As of writing this, code has not been load tested with other
players, but is optimized for cmd block output should it 
be placed ingame. 

There are two main functions; one that works by adjusting the players
home positions in scoreboard each time they sleep (get-bed-cords).

Another works by calling the trigger to activate the players ability
to warp back to their bed. (warp-bed)

The init function serves to initalize all scoreboards and add all players to them.

Notes:
As of writing this, I can see it is possible to modify this code to 
allow players to teleport to any position they want as a home. I will 
personally not write this code (until i change my mind) as warping 
to an arbitrary position that isnt a bed breaks minecrafts thematics. 
However, if desired, replace the bedSlept scoreboard with a trigger scoreboard, 
and reconfigure code to work with this counter instead within the first function.
