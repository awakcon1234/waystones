#> pk_waystones:permissions/tp/in_other_dimensions/false

# Logs
execute if score $pk.waystones.permissions.tp.in_other_dimensions pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"red"},{"text":"Tp In Other Dimensions","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute unless score $pk.waystones.permissions.tp.in_other_dimensions pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Tp In Other Dimensions","color":"yellow"},{"text":"\" hiện đã bị tắt","color":"gray"}]

# Update setting's value
scoreboard players set $pk.waystones.permissions.tp.in_other_dimensions pk.value 0