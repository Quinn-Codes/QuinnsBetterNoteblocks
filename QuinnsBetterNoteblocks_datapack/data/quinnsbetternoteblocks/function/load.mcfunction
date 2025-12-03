# Tracks whether or not the wrench is used
scoreboard objectives add tuning_wrench_useR minecraft.used:minecraft.carrot_on_a_stick "Tuning Wrench Use"

# RNG Generator
scoreboard objectives add qbnb_rng dummy

# Tracks raycast info
scoreboard objectives add vdvcasttemp dummy

# Allows for switching wrench modes
scoreboard objectives add wrenchCooldown dummy

# Allows for changing note block notes
scoreboard objectives add noteUpdated dummy
scoreboard objectives add octaveUpdated dummy

# Allows for pasting into noteblocks from offhanding
scoreboard objectives add qbnb_pasting dummy

# Macro scoreboards
scoreboard objectives add qbnb_temp dummy

# Start cleanup function
function quinnsbetternoteblocks:cleanup