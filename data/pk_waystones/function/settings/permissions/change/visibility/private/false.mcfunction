#> pk_waystones:permissions/change/visibility/private/false

# Logs
execute if score $pk.waystones.permissions.change.visiblity.private pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"red"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute unless score $pk.waystones.permissions.change.visiblity.private pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đã bị tắt","color":"gray"}]

# Update setting's value
scoreboard players set $pk.waystones.permissions.change.visiblity.private pk.value 0