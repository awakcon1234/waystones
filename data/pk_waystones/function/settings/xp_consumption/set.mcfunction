#> pk_waystones:settings/xp_consumption/set
# @input
#   $mode (string): The distance calculation mode. Can be either "manhattan" (following grid) or "euclidian" (straight-line)
#   $value (int): Can be either:
#       - Distance in blocks per level consumption if the mode is "manhtattan" or "euclidian"
#           If set to 0 or less, disable the level consumption
#           For example, if set to 1000 and the current distance that separates both waystones is between 2000 and 2999, it would requires 2 levels.
#       - Required levels per use if the mode is "fixed"
# Example: 
#   function pk_waystones:settings/xp_consumption/set {value:100,mode:"euclidian"} 

# Store parameters
$data modify storage pk:common temp.mode set value $(mode)
$data modify storage pk:common temp.value set value $(value)

# Set default mode to euclidian (0)
scoreboard players set $pk.waystones.settings.xp_consumption.mode pk.value 0
# Set manatthan mode (1)
execute if data storage pk:common temp{mode:"manhattan"} run scoreboard players set $pk.waystones.settings.xp_consumption.mode pk.value 1
# Set fixed mode (2)
execute if data storage pk:common temp{mode:"fixed"} run scoreboard players set $pk.waystones.settings.xp_consumption.mode pk.value 2

# Set value
$scoreboard players set $pk.waystones.settings.xp_consumption.value pk.value $(value)

# Logs
#   Mode manatthan or euclidian
execute if score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. if score $pk.waystones.settings.xp_consumption.mode pk.value matches 0..1 run tellraw @s [{"text":"Dịch chuyển hiện yêu cầu một cấp độ mỗi ","color":"gray"},{"nbt":"temp.value","storage":"pk:common","color":"yellow"},{"text":" khối, khoảng cách giữa hai đá dịch chuyển được tính theo thuật toán \"","color":"gray"},{"nbt":"temp.mode","storage":"pk:common","color":"yellow"},{"text":"\".","color":"gray"}]
#   Mode fixed
execute if score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. if score $pk.waystones.settings.xp_consumption.mode pk.value matches 2 run tellraw @s [{"text":"Dịch chuyển hiện yêu cầu ","color":"gray"},{"nbt":"temp.value","storage":"pk:common","color":"yellow"},{"text":" cấp độ, không tính đến khoảng cách giữa hai đá dịch chuyển","color":"gray"}]
#   Disable setting
execute unless score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. run tellraw @s [{"text":"Yêu cầu cấp độ","color":"yellow"},{"text":" khi dịch chuyển hiện đã được vô hiệu hóa","color":"gray"}]