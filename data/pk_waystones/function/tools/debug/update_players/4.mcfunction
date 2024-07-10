#> pk_waystones:tools/debug/update_players/4

# Try to get the resolved name
data remove storage pk:common debug.update_players.params.name
data modify storage pk:common debug.update_players.params.uuid set from entity @s item.components."minecraft:profile".id
data modify storage pk:common debug.update_players.params.name set from entity @s item.components."minecraft:profile".name

# Remove entity
kill @s

# Update player in database
execute if data storage pk:common debug.update_players.params.name run function pk_waystones:tools/debug/update_players/5 with storage pk:common debug.update_players.params