#> pk_waystones:permissions/change/protection/false

# Logs
execute if score $pk.waystones.permissions.change.protection pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"red"},{"text":"Change Protection","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute unless score $pk.waystones.permissions.change.protection pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Protection","color":"yellow"},{"text":"\" hiện đã bị tắt","color":"gray"}]

# Update setting's value
scoreboard players set $pk.waystones.permissions.change.protection pk.value 0