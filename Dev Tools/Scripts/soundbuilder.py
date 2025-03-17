# Builds the sound files for the resource pack
import os
import json
import math
import subprocess
from pathlib import Path
from pydub import AudioSegment
from config import INSTRUMENTS
from config import NOTES
from config import RP_DIRECTORY

def build_sound_files():
    shifted_notes = ['c', 'csharp', 'd', 'dsharp', 'e', 'f', 'fsharp', 'g', 'gsharp', 'a', 'asharp', 'b']
    for i in INSTRUMENTS.keys():
        # Base sample information: F#4
        base_octave = INSTRUMENTS[i]
        base_note = "fsharp"
        base_note_position = 12 * (base_octave - 1) + shifted_notes.index(base_note)
        #base_note_index = NOTES.index(base_note)  # F# has index 6
        #base_abs = base_octave * 12 + base_note_index  # Absolute pitch of F#base_octave

        # Define the lower and upper bounds in absolute semitones:
        # F#1 and F#8 based on our note indexing
        #lower_bound = 1 * 12 + NOTES.index("fsharp")  # F#1 = 1*12 + 6 = 18
        #upper_bound = 8 * 12 + NOTES.index("fsharp")    # F#8 = 8*12 + 6 = 102

        # Input file: The sample of F#4
        input_file = f"Assets/Original Sounds/Note_block_{i}.ogg"

        # Iterate over octaves 1 through 8
        for o in range(1, 9):
            os.makedirs(os.path.join(RP_DIRECTORY, f"assets/quinnsbetternoteblocks/sounds/{i}/o{o}"), exist_ok=True)
            # Iterate over each note in the chromatic scale
            for n in shifted_notes:
                #note_index = NOTES.index(n)
                # Calculate the absolute semitone value for this note in the current octave
                #note_abs = o * 12 + note_index

                # Skip notes that fall outside the desired range F#1 to F#8
                #if note_abs < lower_bound or note_abs > upper_bound:
                    #continue

                # Compute the semitone difference relative to F#4
                #semitone_diff = note_abs - base_abs
                # Convert semitone difference to cents (100 cents per semitone)
                #shift_cents = semitone_diff * 100

                # Output filename
                if ((o == 1) and (n in ['c', 'csharp', 'd', 'dsharp', 'e', 'f'])) or ((o == 8) and (n in ['g', 'gsharp', 'a', 'asharp', 'b'])):
                    continue

                output_filename = f"{i}_o{o}_{n}.ogg"
                output_path = os.path.join(RP_DIRECTORY, f"assets/quinnsbetternoteblocks/sounds/{i}/o{o}", output_filename)
                os.makedirs(os.path.dirname(output_path), exist_ok=True)

                # Old SoX command
                #cmd = ["sox", input_file, os.path.join(RP_DIRECTORY, f"assets/sounds/{i}/o{o}"), "pitch", str(shift_cents)]
                # Use FFmpeg to pitch up files
                n_pos = 12 * (o-1) + shifted_notes.index(n)
                shift = n_pos - base_note_position
                print(f'Distance from base note {base_note}{base_octave} at {base_note_position} and note {n}{o} at {n_pos} is {shift}')
                cmd = ["ffmpeg", "-y", "-i", input_file, "-af", f'asetrate=44100*pow(2\\,{shift}/12),aresample=44100', output_path]
                print(f"Generating {output_filename}: shifting by {shift} semitone(s)")

                # Run the FFmpeg command
                subprocess.run(cmd, check=True)

    print("All samples generated.")


def boost_volume(folder_path=os.path.abspath(RP_DIRECTORY), boost_percent=20):
    # Calculate the amplitude factor and convert to dB.
    ogg_files = list(Path(folder_path).rglob("*.ogg"))
    amplitude_factor = 1 + boost_percent / 100.0
    gain_dB = 20 * math.log10(amplitude_factor)
    print(f"Applying a gain of {gain_dB:.2f} dB (which is a {boost_percent}% boost) to all .ogg files in {folder_path}")
    for file in ogg_files:
        try:
            # Load the .ogg file.
            audio = AudioSegment.from_file(file, format="ogg")
            # Apply the computed gain.
            boosted_audio = audio.apply_gain(gain_dB)
            # Save the boosted file, overwriting the original.
            boosted_audio.export(file, format="ogg")
            print(f"Boosted volume for: {file}")
        except Exception as e:
            print(f"Error processing {file}: {e}")

# Builds the sound.json file and the en_us.json file (could be expanded to auto-translate en_us to other languages)
def make_sound_json(overwrite=False):
    # Open the json str
    soundjson = "{"
    subtitles = "{"

    print("Generating sound.json and en_us.json")
    # For each instrument,
    for i in INSTRUMENTS.keys():
        # each octave,
        for o in range(1, 9):
            # and each note in that octave,
            for n in NOTES:
                # Build the full sound.json string
                soundjson += f"\"{i}.o{o}.{n}\":{{\"category\":\"record\",\"subtitle\":\"subtitles.{i}_o{o}_{n}\",\"sounds\":[\"quinnsbetternoteblocks:{i}/o{o}/{i}_o{o}_{n}\"]}},"
                # Create subtitles for all sounds

                sharp = "#" if "sharp" in n else ""
                subtitles += f"\"subtitles.{i}_o{o}_{n}\": \"{i.capitalize()} plays {n[0].capitalize()}{sharp}{o}\","

    # Strip the trailing comma ,
    soundjson = soundjson.rstrip(", ")
    subtitles = subtitles.rstrip(",")


    # Close the json string
    soundjson += "}"
    subtitles += "}"

    if(overwrite):
        print("Writing sound.json...")
        with open(os.path.join(RP_DIRECTORY, "assets/quinnsbetternoteblocks", "sounds.json"), "w") as json_file:
            json.dump(json.loads(soundjson), json_file)

        print("Writing en_us.json...")
        with open(os.path.join(RP_DIRECTORY, "assets/quinnsbetternoteblocks/lang", "en_us.json"), "w") as json_file:
            json.dump(json.loads(subtitles), json_file)