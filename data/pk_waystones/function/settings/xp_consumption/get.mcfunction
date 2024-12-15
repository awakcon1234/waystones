#> pk_waystones:settings/xp_consumption/get

# Get used distance mode
execute unless score $pk.waystones.settings.xp_consumption.mode pk.value matches 1.. run data modify storage pk:common temp.mode set value "euclidian"
execute if score $pk.waystones.settings.xp_consumption.mode pk.value matches 1 run data modify storage pk:common temp.mode set value "manhattan"
execute if score $pk.waystones.settings.xp_consumption.mode pk.value matches 2 run data modify storage pk:common temp.mode set value "fixed"

# Logs
#   Mode manatthan or euclidian
execute if score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. if score $pk.waystones.settings.xp_consumption.mode pk.value matches 0..1 run tellraw @s [{"text":"Dịch chuyển hiện yêu cầu một cấp độ mỗi ","color":"gray"},{"nbt":"temp.value","storage":"pk:common","color":"yellow"},{"text":" khối, khoảng cách giữa hai đá dịch chuyển được tính theo thuật toán \"","color":"gray"},{"nbt":"temp.mode","storage":"pk:common","color":"yellow"},{"text":"\".","color":"gray"}]
#    Mode fixed
execute if score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. if score $pk.waystones.settings.xp_consumption.mode pk.value matches 2 run tellraw @s [{"text":"Dịch chuyển hiện yêu cầu","color":"gray"},{"nbt":"temp.value","storage":"pk:common","color":"yellow"},{"text":" cấp độ, không tính đến khoảng cách giữa hai đá dịch chuyển","color":"gray"}]
#   Disable setting
execute unless score $pk.waystones.settings.xp_consumption.value pk.value matches 1.. run tellraw @s [{"text":"Yêu cầu cấp độ","color":"yellow"},{"text":" khi dịch chuyển hiện đã được vô hiệu hóa","color":"gray"}]