# Builds datapack files
import os
from config import DP_DIRECTORY
DIR = f"{DP_DIRECTORY}/data/quinnsbetternoteblocks/function/gamelogic"
from config import INSTRUMENTS
from config import NOTES
from config import MAX_OCTAVE

"""
Builds the note block powered logic in the datapack's data/quinnsbetternoteblocks
/function/gamelogic/nb_powered.mcfunction file.
"""
def make_nb_powered():
    commands = "tag @s add activated\n"

    # Add commands for triggering each instrument
    for i in INSTRUMENTS.keys():
        commands += f"# {i.upper()}\n"
        commands += f"execute if block ~ ~ ~ minecraft:note_block[instrument={i}] run function quinnsbetternoteblocks:gamelogic/sound_activation/instruments/{i}/{i}_powered\n\n"

    # Filename for nb_powered logic
    filename = 'nb_powered.mcfunction'
    filepath = os.path.join(DIR, filename)

    # Create the directory if it doesn't exist
    os.makedirs(DIR, exist_ok=True)

    # Write commands to nb_powered.mcfunction
    print("Writing nb_powered.mcfunction...")
    with open(filepath, 'w') as file:
        file.write(commands)

"""
Builds the playsound command logic in the datapack's data/quinnsbetternoteblocks
/function/gamelogic/sound_activation/instruments folder
"""
def make_instruments():
    # For each instrument,
    print("Writing instrument power files:")
    for i in INSTRUMENTS.keys():
        # Make path to instrument file
        commands = ""
        directory = os.path.join(DIR, f"sound_activation/instruments/{i}")
        filename = f'{i}_powered.mcfunction'
        filepath = os.path.join(directory, filename)
        os.makedirs(directory, exist_ok=True)

        # For each octave range, construct a command for the current instrument
        for o in range(1,MAX_OCTAVE-1, 2):
            commands += f"# OCTAVE {o}-{o+2}\n"
            commands += f"execute if entity @s[tag=o{o}-{o+2}] run function quinnsbetternoteblocks:gamelogic/sound_activation/instruments/{i}/{i}_o{o}-{o+2}\n"

        # Write commands to the instrument file
        print(f"Writing {filename}...")
        with open(os.path.abspath(filepath), 'w') as file:
            file.write(commands)
        
        # For each octave range,
        for o in range(1,MAX_OCTAVE-1, 2):
            # Make path to octave range file
            commands = ""
            filename = f'{i}_o{o}-{o+2}.mcfunction'
            directory = os.path.join(DP_DIRECTORY, r'data\quinnsbetternoteblocks\function\gamelogic\sound_activation\instruments', f'{i}')
            filepath = os.path.join(directory, filename)
            os.makedirs(directory, exist_ok=True)

            # For each note,
            for n in range (0, 25):
                commands += f"# NOTE {n}\n"
                # Make a command for that note for the current octave
                note = NOTES[n%len(NOTES)]
                if note == "c":
                    o += 1
                if o > MAX_OCTAVE:
                    o -= MAX_OCTAVE
                commands += f"execute if block ~ ~ ~ minecraft:note_block[note={n}] run playsound quinnsbetternoteblocks:{i}.o{o}.{note} record @a[distance=..48] ~ ~ ~ 3\n"
                commands += f"execute if block ~ ~ ~ minecraft:note_block[note={n}] run execute align y run particle minecraft:note ~ ~1.25 ~ {0.04167*n} 0 0 1 0\n"

            # Write to the octave-range file
            print(f"Writing {filename}...")
            print(f"Attempting to write to: {os.path.abspath(filepath)}")
            with open(os.path.abspath(filepath), 'w') as file:
                file.write(commands)