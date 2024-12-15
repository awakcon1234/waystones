#> pk_waystones:settings/limit_per_server/set
# @input
#   count: count
# Example: 
#   function pk_waystones:settings/limit_per_server/set {count:1}

$scoreboard players set $pk.waystones.settings.limit_per_server pk.value $(count)

# Limited
execute if score $pk.waystones.settings.limit_per_server pk.value matches 0.. run tellraw @s [{"text":"Số đá dịch chuyển tối đa đã được đổi thành ","color":"gray"},{"score":{"name":"$pk.waystones.settings.limit_per_server","objective":"pk.value"},"color":"yellow"},{"text":" trên toàn máy chủ","color":"gray"}]
# Unlimited
execute unless score $pk.waystones.settings.limit_per_server pk.value matches 0.. run tellraw @s [{"text":"Đã loại bỏ giới hạn số đá dịch chuyển trên máy chủ","color":"gray"}]