# Called from nb_check_broken
# As interaction
# At note block

# Clear the sculk vein above
execute if block ~ ~1 ~ minecraft:sculk_vein run setblock ~ ~1 ~ minecraft:air
# Kill the text display
#execute positioned ~ ~1.25 ~ run kill @e[type=text_display,distance=..0.25,tag=nb_text]
# Kill item display
execute at @s run function quinnsbetternoteblocks:gamelogic/nb_display/displayentity_despawn
# Kill the interaction entity
kill @s