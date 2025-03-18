# Builds datapack files
import os
from config import DP_DIRECTORY
DIR = f"{DP_DIRECTORY}/data/quinnsbetternoteblocks/function/gamelogic"
from config import INSTRUMENTS
from config import NOTES

# Builds the note block powered logic in the datapack
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

# Builds the playsound command logic in the datapack
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

        # For each octave, construct a command for the current instrument
        for o in range(1,7):
            commands += f"# OCTAVE {o}-{o+2}\n"
            commands += f"execute if entity @s[tag=o{o}-{o+2}] run function quinnsbetternoteblocks:gamelogic/sound_activation/instruments/{i}/octaves/{o}-{o+2}/{i}_o{o}-{o+2}\n"

        # Write commands to the instrument file
        print(f"Writing {filename}...")
        with open(filepath, 'w') as file:
            file.write(commands)
        
        # For each octave,
        outer_directory =  directory
        for o in range(1,7):
            # Make path to octave range file
            commands = ""
            directory = os.path.join(DP_DIRECTORY, r'data\quinnsbetternoteblocks\function\gamelogic\sound_activation\instruments', f'{i}', 'octaves', f"{o}-{o+2}")
            #os.path.join(outer_directory, "octaves", f"{o}-{o+2}")
            filename = f'{i}_o{o}-{o+2}.mcfunction'
            filepath = os.path.join(directory, filename)
            os.makedirs(directory, exist_ok=True)

            # For each note,
            for n in range (0, 25):
                # Make a command for that note for the current octave
                note = NOTES[n%len(NOTES)]
                if note == "c":
                    o += 1
                if o > 8:
                    o -= 8
                commands += f"execute if block ~ ~ ~ minecraft:note_block[note={n}] run playsound quinnsbetternoteblocks:{i}.o{o}.{note} record @a[distance=..48] ~ ~ ~ 3\n"

            # Write to the octave-range file
            print(f"Writing {filename}...")
            print(f"Attempting to write to: {os.path.abspath(filepath)}")
            with open(os.path.abspath(filepath), 'w') as file:
                file.write(commands)