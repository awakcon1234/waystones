#> pk_waystones:permissions/change/visibility/discover/true

# Logs
execute if score $pk.waystones.permissions.change.visiblity.discover pk.value matches 1 run tellraw @s [{"text":"Quyền hạn \"","color":"red"},{"text":"Change Visibility To Discover","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.waystones.permissions.change.visiblity.discover pk.value matches 1 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Visibility To Discover","color":"yellow"},{"text":"\" hiện đã được bật","color":"gray"}]

# Update setting's value
scoreboard players set $pk.waystones.permissions.change.visiblity.discover pk.value 1