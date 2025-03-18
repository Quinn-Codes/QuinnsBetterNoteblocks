# Called from change_mode
# As player

# Modify wrench to tuning mode
item modify entity @s weapon.mainhand quinnsbetternoteblocks:tuning_mode
# Set wrench to cooldown
scoreboard players set @s wrenchCooldown 1

# Chat feedback for changing to tuning mode
tellraw @s ["",{"text":"Changed Mode to: ","bold":false,"color":"blue"},{"text":"Tuning","bold":true,"color":"dark_green"}]

# Sound feedback for changing to tuning mode
playsound minecraft:block.small_amethyst_bud.place player @s ~ ~ ~ 0.2 1.2 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 1.0 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 1.2 0.5
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.2 1.4 0.5