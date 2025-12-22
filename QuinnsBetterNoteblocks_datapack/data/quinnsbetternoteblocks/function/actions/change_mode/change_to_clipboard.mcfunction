# Called from change_mode
# As player

# Modify wrench to clipboard mode
item modify entity @s weapon.mainhand quinnsbetternoteblocks:clipboard_mode

# Set wrench to cooldown
scoreboard players set @s wrenchCooldown 1

# Chat feedback for changing to clipboard mode
title @s actionbar [{"text":"Clipboard Mode","bold":true,"color":"dark_aqua"}]

# Update wrench's name
function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_clipboard_name

# Sound feedback for changing to clipboard mode
playsound minecraft:block.small_amethyst_bud.place player @s ~ ~ ~ 0.2 1.0 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 0.1 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 1.0 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 2.0 0.5