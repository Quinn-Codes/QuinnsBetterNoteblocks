# QuinnsBetterNoteblocks
A vanilla friendly datapack/resourcepack that adds better functionality to noteblocks in Vanilla minecraft, such as noteblock editing tools, more octaves, etc.

If you've ever tried to make a jingle or a song using noteblocks but gave up because Minecraft's noteblocks can't pitch high or low enough, this project is for you! While vanilla Minecraft only supports 2 octaves, QuinnsBetterNoteblocks adds support for 8 octaves, which is more than enough to create any song! This pack is fully vanilla-friendly and only requires the installation of a resourcepack and a datapack.

|                |Vanilla Minecraft              |QuinnsBetterNoteblocks       |
|----------------|-------------------------------|-----------------------------|
|Octaves         | 2                             | 8                           | 
|Instruments     | 16                            | 16 (more coming!)           | 
|Total Notes     | 400                           | 1,536                       |

## Installation
### Singleplayer
1. Navigate to your [.minecraft](https://minecraft.fandom.com/wiki/.minecraft) folder
2. Drop ``QuinnsBetterNoteblocks_resourcepack.zip`` into the ``resourcepacks`` folder
3. Open ``saves``
4. Open the world you want to add it to
5. Drop ``QuinnsbetterNoteblocks_datapack.zip`` into the ``datapacks`` folder
6. Make sure you equip the resourcepack

### Multiplayer
Use these instructions if you are a server owner and would like to add QuinnsBetterNoteblocks to your server so any player can use it.
1. In your server, open the ``world`` folder
2. Move ``QuinnsbetterNoteblocks_datapack.zip`` into the ``datapacks`` folder
3. Upload ``QuinnsBetterNoteblocks_resourcepack.zip`` to a resource pack hosting website like https://mc-packs.net
4. Open your ``server.properties`` file and fill in the ``resource-pack=`` field with the download link and the ``resource-pack-sha1=`` field with the SHA-1 Hash. (if you use https://mc-packs.net these fields are auto-generated for you)

## Features
 - Change the octave of noteblocks
 - Custom tuning wrench item

## Planned Features
- Recipe for the tuner (coming very soon!)
- More features for the tuning fork such as
	- Copy / paste noteblock tuning
	- Decrease noteblock pitch
	- Holding shift to increase/decrease pitch by 5
- More feedback in chat
- Updated visuals
	- Custom model on top of the noteblock to signify upgrade
- More instruments

## FAQ
- Q: Why both a datapack and a resourcepack?
	- A: The resourcepack holds the sound files and the datapack handles the logic, both are needed.
- Q: Will this cause performance issues?
	- A: This addon is still in its early stages, and I haven't yet tested the performance impact of it. That being said, it seems to have no impact on my frames or TPS in my testing world.

## Known Bugs
- Better Noteblocks have an extra 1 tick delay
	- As far as I know, there is no way around this due to how the datapack commands execute