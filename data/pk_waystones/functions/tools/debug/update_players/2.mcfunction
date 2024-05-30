#> pk_waystones:tools/debug/update_players/2

# Prepare profile to resolve
tag @s add pk.update_players
data modify entity @s transformation.scale set value [0f,0f,0f]
data modify entity @s item set value {id:"minecraft:player_head",count:1b}
data modify entity @s item.components."minecraft:profile".id set from storage pk:common temp.destructive.players[-1].uuid