# Called from interaction tick
# As interacting player

# Clear interaction
data remove entity @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] interaction

# CLIPBOARD MODE
# Right click clipboard mode (paste)
execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard unless predicate quinnsbetternoteblocks:holding_shift run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_rc
# Shift + right click clipboard mode (copy)
execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard if predicate quinnsbetternoteblocks:holding_shift run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_src

# TUNING MODE
# Right click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/tuning_rc
# Shift + right click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/tuning_src

# Update better noteblock
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:gamelogic/nb_display/displayentity_update