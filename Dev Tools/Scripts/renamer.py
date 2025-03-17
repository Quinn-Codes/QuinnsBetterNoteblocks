# - - - - - - - - - - - - - - - - - - - - -
#           D E P R E C A T E D
# - - - - - - - - - - - - - - - - - - - - -
# Old file used for fixing file names, shouldn't be needed anymore 
# since file are auto-generated (if all goes well)
import os
import math
from pydub import AudioSegment

def rename_files(directory):
    # Loop through all items in the directory
    for filename in os.listdir(directory):
        old_path = os.path.join(directory, filename)
        # Ensure that we are working with a file
        if os.path.isfile(old_path):
            # Define a new filename; for example, adding a prefix
            (octave, instr, note) = filename.split('_')
            new_filename = f"{instr}_{octave}_{note}"
            new_path = os.path.join(directory, new_filename)
            os.rename(old_path, new_path)
            print(f"Renamed '{filename}' to '{new_filename}'")