#> pk_waystones:tools/debug/update_players/1

# Summon item_display having item with profile to resolve
execute summon item_display run function pk_waystones:tools/debug/update_players/2

# Recursive call
data remove storage pk:common temp.destructive.players[-1]
execute if data storage pk:common temp.destructive.players[-1] run function pk_waystones:tools/debug/update_players/1