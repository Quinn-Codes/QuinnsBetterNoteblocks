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
    # For each instrument...
    for i in INSTRUMENTS.keys():
        # Get the instrument's base octave, note, and determine its position in the list
        base_octave = INSTRUMENTS[i]
        base_note = "fsharp"
        base_note_position = 12 * (base_octave - 1) + shifted_notes.index(base_note)

        # Get the input file for this instrument and sample rate
        input_file = f"Assets/Original Sounds/Note_block_{i}.ogg"
        sample_rate = get_sample_rate(input_file)

        # Iterate over octaves 1 through 8
        for o in range(1, 9):
            # Iterate over each note to be generated
            for n in shifted_notes:
                # Skip if the note is outside minecraft's note block range
                if ((o == 1) and (n in ['c', 'csharp', 'd', 'dsharp', 'e', 'f'])) or ((o == 8) and (n in ['g', 'gsharp', 'a', 'asharp', 'b'])):
                    continue

                # Generate output filepath
                output_filename = f"{i}_o{o}_{n}.ogg"
                output_path = os.path.join(RP_DIRECTORY, f"assets/quinnsbetternoteblocks/sounds/{i}/o{o}", output_filename)
                os.makedirs(os.path.dirname(output_path), exist_ok=True)

                # Using FFmpeg to pitch up files

                # Find the position of the current note and its distance from the base note
                n_pos = 12 * (o-1) + shifted_notes.index(n)
                shift = n_pos - base_note_position
                print(f'Distance from base note {base_note}{base_octave} at {base_note_position} and note {n}{o} at {n_pos} is {shift}')

                # Calculate the pitch shift and the filter
                pitch_shift = pow(2, shift/12)
                filter = f"asetrate={sample_rate}*{pitch_shift},aresample={sample_rate}"

                # Construct the fmmpeg command and run it
                print(f"Generating {output_filename}: shifting by {shift} semitone(s) (pitch shift of {pitch_shift}, sample rate of {sample_rate})")
                cmd = ["ffmpeg", "-y", "-i", input_file, "-filter:a", filter, output_path]
                subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                

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

# Gets the sample rate of a given file using ffprobe
def get_sample_rate(file_path):
    result = subprocess.run(
        [
            "ffprobe", 
            "-v", "error",
            "-select_streams", "a:0",
            "-show_entries", "stream=sample_rate",
            "-of", "default=noprint_wrappers=1:nokey=1",
            file_path
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )
    
    if result.returncode != 0:
        raise RuntimeError(f"ffprobe error: {result.stderr}")
    
    try:
        return int(result.stdout.strip())
    except ValueError:
        raise ValueError(f"Unexpected output: {result.stdout}")