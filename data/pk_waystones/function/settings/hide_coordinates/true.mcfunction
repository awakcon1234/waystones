#> pk_waystones:settings/hide_coordinates/true

# Cancel process if setting is already set on the attempted value
execute if score $pk.waystones.settings.hide_coordinates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"red"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.waystones.settings.hide_coordinates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Hide Coordinates","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"true","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.waystones.settings.hide_coordinates pk.value 1