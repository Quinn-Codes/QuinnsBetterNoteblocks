# Called from interaction tick
# As interacting player

# Clear interaction
data remove entity @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] attack

# OCTAVE MODE
# Left click octave mode
execute if predicate quinnsbetternoteblocks:holding_wrench_octave unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/modify/decrease_octave
# Shift + left click octave mode
execute if predicate quinnsbetternoteblocks:holding_wrench_octave if predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/check_note

# TUNING MODE
# Left click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning unless predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/modify/decrease_note
# Shift + left click tuning mode
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if predicate quinnsbetternoteblocks:holding_shift run execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/check_note