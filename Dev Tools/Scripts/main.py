from config import MC_DIRECTORY
from config import RP_DIRECTORY
from config import DP_DIRECTORY
from config import MC_SAVE
import soundbuilder
import commandbuilder
import os
import shutil

def buildToGame():
    # Resource pack methods
    #soundbuilder.build_sound_files()
    #soundbuilder.boost_volume(boost_percent=100)
    #soundbuilder.make_sound_json(True)

    # Datapack methods
    #commandbuilder.make_nb_powered()
    #commandbuilder.make_instruments()

    # Import into game
    print('Copying resourcepack')
    shutil.copytree(r"\\?\\" + os.path.abspath(RP_DIRECTORY), r"\\?\\" + os.path.join(MC_DIRECTORY,"resourcepacks","QuinnsBetterNoteblocks_resourcepack"), dirs_exist_ok=True)
    print('Copying datapack')
    shutil.copytree(r"\\?\\" + os.path.abspath(DP_DIRECTORY), r"\\?\\" + os.path.join(MC_DIRECTORY,"saves",MC_SAVE,"datapacks","QuinnsBetterNoteblocks_datapack"), dirs_exist_ok=True)

    print("Build completed successfully!")

buildToGame()