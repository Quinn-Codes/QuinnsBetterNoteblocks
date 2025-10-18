# Called from clipboard_src
# As interacting player

# Copy octave data
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"ClipboardOctave": "o7-9"}}]

# Display actionbar
execute if block ~ ~ ~ minecraft:note_block[note=0] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"F#","color":"#77D700"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=1] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"G","color":"#95C000"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=2] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"G#","color":"#B2A500"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=3] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"A","color":"#CC8600"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=4] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"A#","color":"#E26500"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=5] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"B","color":"#F34100"},{"text":"7","color":"#0068E0"}]
execute if block ~ ~ ~ minecraft:note_block[note=6] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"C","color":"#FC1E00"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=7] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"C#","color":"#FE000F"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=8] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"D","color":"#F70033"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=9] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"D#","color":"#E8005A"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=10] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"E","color":"#CF0083"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=11] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"F","color":"#AE00A9"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=12] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"F#","color":"#8600CC"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=13] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"G","color":"#5B00E7"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=14] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"G#","color":"#2D00F9"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=15] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"A","color":"#020AFE"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=16] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"A#","color":"#0037F6"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=17] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"B","color":"#0068E0"},{"text":"8","color":"#00E958"}]
execute if block ~ ~ ~ minecraft:note_block[note=18] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"C","color":"#009ABC"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=19] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"C#","color":"#00C68D"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=20] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"D","color":"#00E958"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=21] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"D#","color":"#00FC21"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=22] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"E","color":"#1FFC00"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=23] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"F","color":"#59E800"},{"text":"9","color":"#59E800"}]
execute if block ~ ~ ~ minecraft:note_block[note=24] run title @s actionbar [{"text":"Copied","color":"aqua"}," ",{"text":"F#","color":"#94C100"},{"text":"9","color":"#59E800"}]