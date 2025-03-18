# Called from cleanup
# As interaction

# Clear the barrier above
execute if block ~ ~1 ~ minecraft:barrier run setblock ~ ~1 ~ minecraft:air
# Kill the text display
execute positioned ~ ~1.25 ~ run kill @e[type=text_display,distance=..0.25,tag=nb_text]
# Kill the interaction entity
kill @s