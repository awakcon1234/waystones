#> pk_waystones:blocks/waystone/place/available_container
# @context should be set at container

# Set container
setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"text":"Đá dịch chuyển"}',Items:[{id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:custom_data":{pk_data:{custom_block:1b,id:"waystone",from:"waystones",gui:1b,in_use:0b}}},Slot:0b}]}

# Prepare container custom name
data modify storage pk:common temp.args set value {p1:"data modify storage pk:common temp.custom_name set from storage pk:waystones database.waystones[{id:",p2:"}].name"}
execute align xyz run data modify storage pk:common temp.args.v1 set from entity @e[type=marker,tag=pk.waystones.waystone.controller,dx=0,limit=1] data.waystone.id
function pk_waystones:packages/dynamic_command/1_var with storage pk:common temp.args
execute unless data storage pk:common temp{custom_name:'{"text":"Đá dịch chuyển","italic": false,"color": "yellow"}'} run data modify block ~ ~ ~ CustomName set from storage pk:common temp.custom_name