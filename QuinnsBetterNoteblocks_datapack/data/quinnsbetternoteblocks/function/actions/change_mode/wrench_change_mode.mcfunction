# Called from raycast_ray
# As player

# Change Octave Wrench to Tuning Wrench
execute if predicate quinnsbetternoteblocks:holding_wrench_octave if score @s wrenchCooldown matches 0 run function quinnsbetternoteblocks:actions/change_mode/change_to_tuning

# Change Tuning Wrench to Octave Wrench
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if score @s wrenchCooldown matches 0 run function quinnsbetternoteblocks:actions/change_mode/change_to_octave

# Clear wrench cooldown
scoreboard players set @s wrenchCooldown 0