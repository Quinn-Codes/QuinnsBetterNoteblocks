# Global variables

# The directory of minecraft this should be uploaded to
MC_DIRECTORY = r"G:\Game Installations\CurseForge\Minecraft\Instances\Vanilla+"
# The save file the datapack should be sent to
MC_SAVE = "Redstone Testing"
# The relative directory of the resource/data packs within this project
RP_DIRECTORY = "../QuinnsBetterNoteblocks_resourcepack"
DP_DIRECTORY = "../QuinnsBetterNoteblocks_datapack"
# The names of the instruments to be used, plus their octaves
#INSTRUMENTS = ["harp", "bass", "snare", "hat", "basedrum", "bell", "flute", "chime", "guitar", "xylophone", "cow_bell", "didgeridoo", "bit", "banjo", "pling"]
INSTRUMENTS = {
    "harp": 4,
    "bass": 3,
    "snare": 6,
    "hat": 6,
    "basedrum": 4,
    "bell": 6,
    "flute": 5,
    "chime": 6,
    "guitar": 4,
    "xylophone": 6,
    "iron_xylophone": 4,
    "cow_bell": 6,
    "didgeridoo": 4,
    "bit": 6,
    "banjo": 5,
    "pling": 5
}
INSTR_STARTING_OCTAVE = [4, 2, 4, 4, 4, 6, 5, 6, 3, 6, 4, 5, 2, 4, 4, 4]
NOTES = ['fsharp', 'g', 'gsharp', 'a', 'asharp', 'b', 'c', 'csharp', 'd', 'dsharp', 'e', 'f']