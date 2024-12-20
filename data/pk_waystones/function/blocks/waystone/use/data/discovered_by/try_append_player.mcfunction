#> pk_waystones:blocks/waystone/use/data/discovered_by/try_append_player
# @context the player who opened the waystone container, at the waystone container
# Storage:
# pk:common temp.used_waystone : the currently used waystone
#   @within function pk_waystones:blocks/waystone/use/start

# Prepare data
data modify storage pk:common temp.player set value {}
data modify storage pk:common temp.player.uuid set from entity @s UUID

# Check if the player is already stored in the discovered_by list, otherwise, add it
scoreboard players set $success pk.temp 0
data modify storage pk:common temp.args set value {p1:"execute unless data storage pk:common temp.used_waystone.discovered_by[{uuid:",p2:"}] store success score $success pk.temp run data modify storage pk:common temp.used_waystone.discovered_by append from storage pk:common temp.player"}
data modify storage pk:common temp.args.v1 set from storage pk:common temp.player.uuid
function pk_waystones:packages/dynamic_command/1_var with storage pk:common temp.args
execute if score $success pk.temp matches 0 run return 0

# Update database
function pk_waystones:blocks/waystone/use/data/used_waystone/update