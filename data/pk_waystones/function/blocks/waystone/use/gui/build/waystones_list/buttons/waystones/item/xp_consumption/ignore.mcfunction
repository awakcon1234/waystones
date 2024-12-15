#> pk_waystones:blocks/waystone/use/gui/build/waystones_list/buttons/waystones/item/xp_consumption/ignore
# @context user at the waystone container location (aligned xyz)
# Storage:
#   pk:common temp.gui.item: the current button item in creation to append to the waystone list

scoreboard players set $ignore pk.temp 1
data modify block ~ ~-1 ~ front_text.messages[0] set value '[{"text":"Không yêu cầu XP để dịch chuyển","color":"green","italic":false}]'
data modify storage pk:common temp.gui.item.components."minecraft:lore" append from block ~ ~-1 ~ front_text.messages[0]