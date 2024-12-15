#> pk_waystones:permissions/change/visibility/private/get

# If true
execute unless score $pk.waystones.permissions.change.visiblity.private pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.waystones.permissions.change.visiblity.private pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Change Visibility To Private","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]
