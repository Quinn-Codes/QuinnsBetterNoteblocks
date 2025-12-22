# Called from tick
# As interaction entity

# Shrink if no players holding a wrench nearby
execute at @s unless entity @p[distance=..64,predicate=quinnsbetternoteblocks:holding_wrench] run function quinnsbetternoteblocks:gamelogic/interactions/interaction_shrink

# Left click detection
execute at @s positioned ~ ~1 ~ align y store success entity @s attack.player[] int 0 on attacker run function quinnsbetternoteblocks:actions/interact/nb_left_click
# Right click detection
execute at @s positioned ~ ~1 ~ align y store success entity @s interaction.player[] int 0 on target run function quinnsbetternoteblocks:actions/interact/nb_right_click
