#> pk_waystones:settings/blacklist_dimensions/remove
# @input
#   $dimension (string): dimension
# Example: 
#   function pk_waystones:settings/blacklist_dimensions/remove {dimension:"minecraft:the_end"}

# Prepare data and score
data remove storage pk:common temp.dimension
$data modify storage pk:common temp.dimension.id set value "$(dimension)"
$execute store result score $found pk.temp run data remove storage pk:waystones database.blacklist.dimensions[{id:"$(dimension)"}]

# If found
execute if score $found pk.temp matches 1.. run tellraw @s [{"text":"Đã loại bỏ chiều không gian \"","color":"gray"},{"nbt":"temp.dimension.id","storage":"pk:common","color":"yellow"},{"text":"\" khỏi danh sách cấm","color":"gray"}]

# If not found
execute unless score $found pk.temp matches 1.. run tellraw @s {"text":"Hiện không có chiều không gian nào với id này đang ở trong danh sách cấm","color":"red"}