# Called from load and cleanup

# Run nb cleanup function at every interaction
execute as @e[type=interaction,tag=nb_interaction] at @s align y positioned ~ ~1 ~ run function quinnsbetternoteblocks:gamelogic/nb_check_broken
# Schedule another cleanup
schedule function quinnsbetternoteblocks:cleanup 5s