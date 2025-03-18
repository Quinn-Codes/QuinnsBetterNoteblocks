# Tracks whether or not the wrench is used
scoreboard objectives add tuning_wrench_useR minecraft.used:minecraft.carrot_on_a_stick "Tuning Wrench Use"

# Tracks raycast info
scoreboard objectives add vdvcasttemp dummy

# Allows for switching wrench modes
scoreboard objectives add wrenchCooldown dummy

# Allows for changing note block notes
scoreboard objectives add noteUpdated dummy

# Start cleanup function
function quinnsbetternoteblocks:cleanup