import json

# Quick and dirty code generation- this file is just a messy file to automate the generation of large amounts of code that follows easy rules
# Everything here will likely only be used once and never again

def actionbar_maker():
    notes = ["F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#"]
    note_colors = ["77D700", "95C000", "B2A500", "CC8600", "E26500", "F34100", "FC1E00", "FE000F", "F70033", "E8005A", "CF0083", "AE00A9", "8600CC", "5B00E7", "2D00F9", "020AFE", "0037F6", "0068E0", "009ABC", "00C68D", "00E958", "00FC21", "1FFC00", "59E800", "94C100"]
    note_i = 0
    octave_sets = [[1, 2, 3], [3, 4, 5], [5, 6, 7], [7, 8, 9]]
    octave_colors = [["77D700", "CC8600", "FC1E00"], ["FC1E00", "E8005A", "8600CC"], ["8600CC", "2D00F9", "0068E0"], ["0068E0","00E958", "59E800"]]
    octaves_i = 0
    base_string = "execute if block ~ ~ ~ minecraft:note_block[note=0] run title @s actionbar [{\"text\":\"Pasted\",\"color\":\"dark_aqua\"},\" \",{\"text\":\"F#\",\"color\":\"#77d700\"},{\"text\":\"3\",\"color\":\"#fc1e00\"}]"
    copypasted = "Copied"

    for j in range(0,4):
        print(f"\nSET {j}\n")
        octaves = octave_sets[j]
        octave_color = octave_colors[j]
        note_i = 0
        octaves_i = 0
        for i in range(0,25):
            print(f"execute if block ~ ~ ~ minecraft:note_block[note={i}] run title @s actionbar [{{\"text\":\"{copypasted}\",\"color\":\"aqua\"}},\" \",{{\"text\":\"{notes[note_i]}\",\"color\":\"#{note_colors[i]}\"}},{{\"text\":\"{octaves[octaves_i]}\",\"color\":\"#{octave_color[octaves_i]}\"}}]")
            note_i += 1
            if note_i == 6 or note_i == 18:
                octaves_i += 1

def item_modifier_maker():
    dir = "QuinnsBetterNoteblocks_datapack/data/quinnsbetternoteblocks/item_modifier/clipboards"
    notes = [("F#", "fsharp", "77D700"), ("G", "g", "95C000"), ("G#", "gsharp", "B2A500"), ("A", "a", "CC8600"), ("A#", "asharp", "E26500"), ("B", "b", "F34100"), ("C", "c", "FC1E00"), ("C#", "csharp", "FE000F"), ("D", "d", "F70033"), ("D#", "dsharp", "E8005A"), ("E", "e", "CF0083"), ("F", "f", "AE00A9"), ("F#", "fsharp", "8600CC"), ("G", "g", "5B00E7"), ("G#", "gsharp", "2D00F9"), ("A", "a", "020AFE"), ("A#", "asharp", "0037F6"), ("B", "b", "0068E0"), ("C", "c", "009ABC"), ("C#", "csharp", "00C68D"), ("D", "d", "00E958"), ("D#", "dsharp", "00FC21"), ("E", "e", "1FFC00"), ("F", "f", "59E800"), ("F#", "fsharp", "94C100")]
    octaves = [("1", "one", "77D700"), ("2", "two", "CC8600"), ("3", "three", "FC1E00"), ("4", "four", "E8005A"), ("5", "five", "8600CC"), ("6", "six", "2D00F9"), ("7", "seven", "0068E0"), ("8", "eight", "00E958"), ("9", "nine", "59E800")]

    
    for i in range(0, 4):
        octave_range = octaves[(i*2):(i*2+3)]
        octave_i = 0
        for j in range(0, 25):
            output = f"[{{\"function\": \"minecraft:set_name\",\"name\": [{{\"text\": \"Clipboard Wrench (\", \"italic\": false}},{{\"text\": \"{notes[j][0]}\", \"color\": \"#{notes[j][2]}\"}},{{\"text\": \"{octave_range[octave_i][0]}\", \"color\": \"#{octave_range[octave_i][2]}\"}},{{\"text\": \")\", \"italic\": false}}],\"target\": \"item_name\"}}]"
            js = json.loads(output)

            output_filename = dir+f"/{notes[j][1]}_{octave_range[octave_i][1]}.json"
            with open(output_filename, 'w') as f:
                json.dump(js, f, indent=4)
            
            if j == 5 or j == 17:
                octave_i += 1

    print("Done")
