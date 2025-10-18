# Called from interaction tick
# As interacting player

# Clear interaction
data remove entity @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] attack

# CLIPBOARD MODE
# Left click clipboard mode
execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_lc
# Shift + left click clipboard mode
execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard if predicate quinnsbetternoteblocks:holding_shift run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_slc

# TUNING MODE
# Left click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/tuning_lc
# Shift + left click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/tuning_slc