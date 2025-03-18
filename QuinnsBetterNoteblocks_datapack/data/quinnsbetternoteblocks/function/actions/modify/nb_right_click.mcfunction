# Called from interaction tick
# As interacting player

# Clear interaction
data remove entity @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] interaction

# OCTAVE MODE
# Right click octave mode
execute if predicate quinnsbetternoteblocks:holding_wrench_octave unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/modify/increase_octave
# Shift + right click octave mode
# Nothing yet

# TUNING MODE
# Right click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/modify/increase_note
# Shift + right click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/modify/big_increase_note