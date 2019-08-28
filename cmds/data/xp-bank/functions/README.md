These functions are responsible for establishing a 
experience points banking system within your vanilla game.
At the time of writing this, such code has yet to be load
tested, but the current design works in exp increments of 1.

For a normal player to access the storage features, simply
type /trigger bankStore <int to store>

For a normal player to access the withdraw features, simply
type /trigger bankWdraw <int to wDraw>

With a little additional configuration, these functions can
also double as a currency system where vendor entities can
have realistic currency xp limits. A change to the selectors
would be in order, as well as some external mechanism for
determining which entities are vendors. 
