#> pk_waystones:blocks/waystone/use/gui/build/waystones_list/buttons/waystones/item/owner
# Set owner in lore

data remove storage pk:common temp.database_output
data modify storage pk:common temp.args set value {p1:"data modify storage pk:common temp.database_output set from storage pk:waystones database.players[{uuid:",p2:"}]"}
data modify storage pk:common temp.args.v1 set from storage pk:common temp.visible_waystone.owner
function pk_waystones:packages/dynamic_command/1_var with storage pk:common temp.args
data modify block ~ ~-1 ~ front_text.messages[0] set value '[{"text":"Chủ sở hữu: ","color":"gray","italic":false},{"nbt":"temp.database_output.name","storage":"pk:common"}]'
data modify storage pk:common temp.gui.item.components."minecraft:lore" append from block ~ ~-1 ~ front_text.messages[0]