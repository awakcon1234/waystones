#> pk_waystones:tools/debug/update_players/3

# Update players from item display entities
execute as @e[type=item_display,tag=pk.update_players] run function pk_waystones:tools/debug/update_players/4

# Stop process
function pk_waystones:tools/debug/update_players/stop