#> pk_waystones:settings/hide_coordinates/get

# If true
execute unless score $pk.waystones.settings.hide_coordinates pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.waystones.settings.hide_coordinates pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]