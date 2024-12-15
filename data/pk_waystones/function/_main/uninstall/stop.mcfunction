#> pk_waystones:_main/uninstall/stop
# @context the player who had run the uninstallation

# Unmark uninstaller
tag @s remove pk.waystones.uninstaller

# Clear the current data pack's specific scores and storage
function pk_waystones:_main/uninstall/remove_specific_features

# Clear all KawaMood's data packs scores and storage if no more KawaMood's data packs are installed
execute unless data storage pk:common installed_datapack[{}] unless data storage pk.common:data Datapacks[{}] run function pk_waystones:_main/uninstall/remove_all_features

# Logs
tellraw @s [{"text": "Đã gỡ bỏ ","color": "yellow"},{"text": "KawaMood's Waystones ","color": "aqua","bold": true},{"text": " thành công"},{"text": "\nBây giờ bạn có thể xóa datapack này khỏi thư mục datapack của thế giới","color": "yellow"}]