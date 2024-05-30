#> pk_waystones:packages/get_player_name/run
# Retrieve the name of the player
# @context a player at @s
# @writes pk:common temp.packages.get_player_name.name

# Loot player head containing the player's name in its profile
loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{pk_package_get_player_name:1b}}},{function:"minecraft:fill_player_head",entity:"this"}]}]}]}

# Store the profile name
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_package_get_player_name:1b}}}},dx=0,limit=1] add pk.current.item
data remove storage pk:common temp.packages.get_player_name.name
data modify storage pk:common temp.packages.get_player_name.name set from entity @e[tag=pk.current.item,dx=0,limit=1] Item.components."minecraft:profile".name
kill @e[tag=pk.current.item,dx=0,limit=1]