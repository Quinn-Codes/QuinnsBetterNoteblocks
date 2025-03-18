# Called from tick
# As interaction entity

# Shrink if no players holding a wrench nearby
execute at @s unless entity @p[distance=..8,predicate=quinnsbetternoteblocks:holding_wrench] run function quinnsbetternoteblocks:gamelogic/interactions/interaction_shrink

# Left click detection
execute at @s store success entity @s attack.player[] int 0 on attacker run function quinnsbetternoteblocks:actions/modify/nb_left_click
# Right click detection
execute at @s store success entity @s interaction.player[] int 0 on target run function quinnsbetternoteblocks:actions/modify/nb_right_click
