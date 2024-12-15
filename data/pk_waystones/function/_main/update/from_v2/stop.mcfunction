#> pk_waystones:_main/update/from_v2/stop

# Reset score
scoreboard players reset $update pk.value

# Logs
tellraw @a[tag=pk.update_from_v2,limit=1] [{"text": "Đã hoàn thành cập nhật toàn bộ đá dịch chuyển từ ","color": "yellow"},{"text": "KawaMood's Waystones (V.2)","color": "aqua","bold": true},{"text": " thành công."}]

# Unmark updater
tag @a[tag=pk.update_from_v2,limit=1] remove pk.update_from_v2