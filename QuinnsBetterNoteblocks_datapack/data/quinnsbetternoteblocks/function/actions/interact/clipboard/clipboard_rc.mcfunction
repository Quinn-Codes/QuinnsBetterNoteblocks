# Called from nb_right_click
# As interacting player

# Paste note into note block
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"0"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=0]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"1"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=1]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"2"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=2]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"3"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=3]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"4"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=4]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"5"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=5]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"6"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=6]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"7"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=7]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"8"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=8]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"9"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=9]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"10"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=10]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"11"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=11]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"12"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=12]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"13"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=13]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"14"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=14]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"15"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=15]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"16"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=16]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"17"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=17]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"18"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=18]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"19"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=19]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"20"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=20]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"21"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=21]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"22"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=22]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"23"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=23]
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardNote:"24"}}}}] run setblock ~ ~ ~ minecraft:note_block[note=24]

# Paste octave into note block
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o1-3"}}}}] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o1-3
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o3-5"}}}}] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o3-5
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o5-7"}}}}] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o5-7
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o7-9"}}}}] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o7-9

# Update octave text
#execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/logic/update_text_octave

# Playsound
execute at @s run playsound minecraft:ui.hud.bubble_pop player @s ~ ~ ~ 1 1.2

# Activate note block
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:gamelogic/nb_powered