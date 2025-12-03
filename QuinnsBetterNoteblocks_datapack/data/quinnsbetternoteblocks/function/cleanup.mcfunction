# Called from load and cleanup

# If the noteblock is missing, clean it up
execute as @e[type=interaction,tag=nb_interaction] at @s align y positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:note_block run function quinnsbetternoteblocks:gamelogic/nb_broken
# Schedule another cleanup
schedule function quinnsbetternoteblocks:cleanup 5s