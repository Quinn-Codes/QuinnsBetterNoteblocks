# Called from nb_right_click
# As interacting player

# Store note # in clipboard
execute if block ~ ~ ~ minecraft:note_block[note=0] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "0"}}]
execute if block ~ ~ ~ minecraft:note_block[note=1] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "1"}}]
execute if block ~ ~ ~ minecraft:note_block[note=2] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "2"}}]
execute if block ~ ~ ~ minecraft:note_block[note=3] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "3"}}]
execute if block ~ ~ ~ minecraft:note_block[note=4] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "4"}}]
execute if block ~ ~ ~ minecraft:note_block[note=5] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "5"}}]
execute if block ~ ~ ~ minecraft:note_block[note=6] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "6"}}]
execute if block ~ ~ ~ minecraft:note_block[note=7] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "7"}}]
execute if block ~ ~ ~ minecraft:note_block[note=8] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "8"}}]
execute if block ~ ~ ~ minecraft:note_block[note=9] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "9"}}]
execute if block ~ ~ ~ minecraft:note_block[note=10] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "10"}}]
execute if block ~ ~ ~ minecraft:note_block[note=11] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "11"}}]
execute if block ~ ~ ~ minecraft:note_block[note=12] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "12"}}]
execute if block ~ ~ ~ minecraft:note_block[note=13] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "13"}}]
execute if block ~ ~ ~ minecraft:note_block[note=14] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "14"}}]
execute if block ~ ~ ~ minecraft:note_block[note=15] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "15"}}]
execute if block ~ ~ ~ minecraft:note_block[note=16] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "16"}}]
execute if block ~ ~ ~ minecraft:note_block[note=17] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "17"}}]
execute if block ~ ~ ~ minecraft:note_block[note=18] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "18"}}]
execute if block ~ ~ ~ minecraft:note_block[note=19] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "19"}}]
execute if block ~ ~ ~ minecraft:note_block[note=20] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "20"}}]
execute if block ~ ~ ~ minecraft:note_block[note=21] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "21"}}]
execute if block ~ ~ ~ minecraft:note_block[note=22] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "22"}}]
execute if block ~ ~ ~ minecraft:note_block[note=23] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "23"}}]
execute if block ~ ~ ~ minecraft:note_block[note=24] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardNote": "24"}}]

# Store octave # in clipboard (also has actionbar title)
execute if entity @e[type=interaction,distance=..0.1,tag=o1-3,limit=1] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/copy_o1-3
execute if entity @e[type=interaction,distance=..0.1,tag=o3-5,limit=1] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/copy_o3-5
execute if entity @e[type=interaction,distance=..0.1,tag=o5-7,limit=1] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/copy_o5-7
execute if entity @e[type=interaction,distance=..0.1,tag=o7-9,limit=1] run function quinnsbetternoteblocks:actions/interact/clipboard/logic/copy_o7-9

# Update wrench's name
function quinnsbetternoteblocks:actions/misc/set_clipboard_name/set_clipboard_name

# Playsound
execute at @s run playsound minecraft:ui.hud.bubble_pop player @s ~ ~ ~ 1 0.8

# Activate note block
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:gamelogic/nb_powered