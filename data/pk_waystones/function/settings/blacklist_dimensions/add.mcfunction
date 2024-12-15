#> pk_waystones:settings/blacklist_dimensions/add
# @input
#   $dimension (string): dimension
# Example: 
#   function pk_waystones:settings/blacklist_dimensions/add {dimension:"minecraft:the_end"}

# Prepare data and score
data remove storage pk:common temp.dimension
$data modify storage pk:common temp.dimension.id set value "$(dimension)"
$execute store result score $already_contains pk.temp if data storage pk:waystones database.blacklist.dimensions[{id:"$(dimension)"}]

# If found
execute unless score $already_contains pk.temp matches 1.. run data modify storage pk:waystones database.blacklist.dimensions append from storage pk:common temp.dimension
execute unless score $already_contains pk.temp matches 1.. run tellraw @s [{"text":"Đã thêm chiều không gian \"","color":"gray"},{"nbt":"temp.dimension.id","storage":"pk:common","color":"yellow"},{"text":"\" vào danh sách cấm","color":"gray"}]

# If not found
execute if score $already_contains pk.temp matches 1.. run tellraw @s {"text":"Chiều không gian này đã nằm trong danh sách cấm","color":"red"}