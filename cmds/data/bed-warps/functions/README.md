These commands allow a normal server player to teleport to
the last bed they slept at. 

As of writing this, code has not been load tested with other
players, but is optimized for cmd block output should it 
be placed ingame. 

There are two functions; one that works by adjusting the players
home positions in scoreboard each time they sleep.

Another works by calling the trigger to activate the players ability
to warp back to their bed. 

Stats:
-Function1
--CMDS; 11
--Unique access to a bed slept counter
-Function2
--Cmds; 8
--Unqiue access to a trigger scoreboard
-Scoreboard Count; 5
--A dummy board to store players bed x position (spawnX)
--A dummy board to store players bed y position (spawnY)
--A dummy board to store players bed z position (spawnZ)
--A scoreboard that gives access to minecraft.custom:sleep_in_bed, or future equivalent. (bedSlept)
--A scoreboard that acts as the trigger for normal players to use and trigger the warping function. (warpBed)

Notes:
As of writing this, I can see it is possible to modify this code to 
allow players to teleport to any position they want as a home. I will 
personally not write this code (until i change my mind) as warping 
to an arbitrary position that isnt a bed breaks minecrafts thematics. 
However, if desired, replace the bedSlept scoreboard with a trigger scoreboard, 
and reconfigure code to work with this counter instead within the first function.
