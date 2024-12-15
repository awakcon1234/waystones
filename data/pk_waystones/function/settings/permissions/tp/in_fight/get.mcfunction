#> pk_waystones:permissions/tp/in_fight/get

# If true
execute unless score $pk.waystones.permissions.tp.in_fight pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Tp In Fight","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.waystones.permissions.tp.in_fight pk.value matches 0 run tellraw @s [{"text":"Quyền hạn \"","color":"gray"},{"text":"Tp In Fight","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]
