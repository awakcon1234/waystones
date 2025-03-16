#> pk_waystones:blocks/waystone/environment/entities/hopper_minecart_remove

# Summon a hopper minecart item
summon item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",count:1}}
kill @s

# Remove potential GUI items absorbed and dropped by the hopper minecart
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_data:{gui:1b}}}}},distance=..2]

# Remove potential GUI items absorbed by a hopper below the hopper minecart
data remove block ~ ~-1 ~ Items[{components:{"minecraft:custom_data":{pk_data:{gui:1b}}}}]

# If the container in_use indicator has been absorbed, restore it
execute as @e[type=marker,tag=pk.waystones.waystone.controller,tag=pk.current.controller,distance=..20] at @s unless items block ~ ~ ~ container.* *[custom_data~{pk_data:{gui:1b}}] run function pk_waystones:blocks/waystone/place/available_container