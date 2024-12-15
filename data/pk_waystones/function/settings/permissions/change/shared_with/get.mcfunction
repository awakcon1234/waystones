#> pk_waystones:permissions/change/shared_with/get

# If true
execute unless score $pk.waystones.permissions.change.shared_with pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Shared With","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.waystones.permissions.change.shared_with pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Shared With","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]
