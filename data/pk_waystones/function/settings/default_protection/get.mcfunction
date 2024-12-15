#> pk_waystones:settings/default_protection/get

execute unless score $pk.waystones.settings.default_protection pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Bảo vệ Mặc định","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"Đã TẮT","color":"yellow"}]
execute if score $pk.waystones.settings.default_protection pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Bảo vệ Mặc định","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"Đã BẬT","color":"yellow"}]