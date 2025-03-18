# Called from change_mode
# As player

# Modify wrench to octave mode
item modify entity @s weapon.mainhand quinnsbetternoteblocks:octave_mode
# Set wrench to cooldown
scoreboard players set @s wrenchCooldown 1

# Chat feedback for changing to octave mode
tellraw @s ["",{"text":"Changed Mode to: ","bold":false,"color":"blue"},{"text":"Octave","bold":true,"color":"dark_aqua"}]

# Sound feedback for changing to octave mode
playsound minecraft:block.small_amethyst_bud.place player @s ~ ~ ~ 0.2 1.0 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 0.1 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 1.0 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 2.0 0.5