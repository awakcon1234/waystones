#> pk_waystones:settings/limit_per_server/get

# Limited
execute if score $pk.waystones.settings.limit_per_server pk.value matches 0.. run tellraw @s [{"text":"Giới hạn số lượng đá dịch chuyển hiện đang là ","color":"gray"},{"score":{"name":"$pk.waystones.settings.limit_per_server","objective":"pk.value"},"color":"yellow"},{"text":" trên toàn máy chủ","color":"gray"}]
# Unlimited
execute unless score $pk.waystones.settings.limit_per_server pk.value matches 0.. run tellraw @s [{"text":"Hiện không có giới hạn số đá dịch chuyển trên máy chủ","color":"gray"}]