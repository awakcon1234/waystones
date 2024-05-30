#> pk_waystones:items/waystone/update/change/run
# Common process from each slot
# @context a temporary armor stand holding the item to change, at the current player

data modify storage pk:common temp.item set from entity @s HandItems[0]

execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"regular"} run function pk_waystones:items/waystone/attributes/andesite
execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"mossy_stone"} run function pk_waystones:items/waystone/attributes/mossy

execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"mossy"} run function pk_waystones:items/waystone/attributes/mossy
execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"andesite"} run function pk_waystones:items/waystone/attributes/andesite
execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"sand"} run function pk_waystones:items/waystone/attributes/sand
execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"nether"} run function pk_waystones:items/waystone/attributes/nether
execute if data storage pk:common temp.item.components."minecraft:custom_data".pk_data{variant:"deepslate"} run function pk_waystones:items/waystone/attributes/deepslate
data modify storage pk:common temp.attributes.count set from storage pk:common temp.item.count

data modify entity @s HandItems[0] set from storage pk:common temp.attributes