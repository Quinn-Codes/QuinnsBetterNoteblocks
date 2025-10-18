# Called from multiple locations (change_to_clipboard, clipboard_src)
# As player

# Separate functions into octaves
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o1-3"}}}}] run function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_name_o1-3
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o3-5"}}}}] run function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_name_o3-5
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o5-7"}}}}] run function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_name_o5-7
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ClipboardOctave:"o7-9"}}}}] run function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_name_o7-9