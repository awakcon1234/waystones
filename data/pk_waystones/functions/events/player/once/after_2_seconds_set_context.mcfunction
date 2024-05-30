#> pk_waystones:events/player/once/after_2_seconds_set_context

# If player's position is loaded
execute as @a[tag=pk.waystones.wait.event.once] at @s if loaded ~ ~ ~ run function pk_waystones:events/player/once/after_2_seconds

# Otherwise, try in 2 more seconds
execute as @a[tag=pk.waystones.wait.event.once] at @s unless loaded ~ ~ ~ run schedule function pk_waystones:events/player/once/after_2_seconds_set_context 2s replace