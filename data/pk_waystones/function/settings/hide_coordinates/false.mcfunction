#> pk_waystones:settings/hide_coordinates/false

# Logs
execute unless score $pk.waystones.settings.hide_coordinates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"red"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute if score $pk.waystones.settings.hide_coordinates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"false","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.waystones.settings.hide_coordinates pk.value 0