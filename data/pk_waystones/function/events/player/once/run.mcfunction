#> pk_waystones:events/player/once/run
# @context player who joins for the first time since the data pack has been installed

# Mark player with the waiting tag
tag @s add pk.waystones.wait.event.once

# Wait 2 seconds
schedule function pk_waystones:events/player/once/after_2_seconds_set_context 2s replace