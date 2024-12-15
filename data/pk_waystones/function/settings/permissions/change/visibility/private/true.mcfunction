#> pk_waystones:permissions/change/visibility/private/true

# Logs
execute if score $pk.waystones.permissions.change.visiblity.private pk.value matches 1 run tellraw @s [{"text":"Quyền hạn \"","color":"red"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.waystones.permissions.change.visiblity.private pk.value matches 1 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đã được bật","color":"gray"}]

# Update setting's value
scoreboard players set $pk.waystones.permissions.change.visiblity.private pk.value 1