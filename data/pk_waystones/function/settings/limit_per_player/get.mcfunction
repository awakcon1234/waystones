#> pk_waystones:settings/limit_per_player/get

# Limited
execute if score $pk.waystones.settings.limit_per_player pk.value matches 0.. run tellraw @s [{"text":"Hiện đang giới hạn ","color":"gray"},{"score":{"name":"$pk.waystones.settings.limit_per_player","objective":"pk.value"},"color":"yellow"},{"text":" đá dịch chuyển cho mỗi người chơi","color":"gray"}]
# Unlimited
execute unless score $pk.waystones.settings.limit_per_player pk.value matches 0.. run tellraw @s [{"text":"Hiện đang không giới hạn số lượng đá dịch chuyển người chơi có thể tạo","color":"gray"}]