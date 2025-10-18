# Called from raycast_ray
# As player

# Change Clipboard Wrench to Tuning Wrench
execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard if score @s wrenchCooldown matches 0 if score @s qbnb_pasting matches 0 run function quinnsbetternoteblocks:actions/change_mode/change_to_tuning

# Change Tuning Wrench to Clipboard Wrench
execute if predicate quinnsbetternoteblocks:holding_wrench_tuning if score @s wrenchCooldown matches 0 if score @s qbnb_pasting matches 0 run function quinnsbetternoteblocks:actions/change_mode/change_to_clipboard

# Clear wrench cooldown
scoreboard players set @s wrenchCooldown 0