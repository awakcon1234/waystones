#> pk_waystones:settings/display_nameplates/get

# If false
execute unless score $pk.waystones.settings.display_nameplates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Name Above","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]
# If true
execute if score $pk.waystones.settings.display_nameplates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Name Above","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]