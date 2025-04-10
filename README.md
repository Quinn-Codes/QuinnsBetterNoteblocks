# QuinnsBetterNoteblocks
![logo](/Dev%20Tools/Assets/logo.png)

A vanilla friendly datapack/resourcepack that adds better functionality to noteblocks in Vanilla minecraft, such as noteblock editing tools, more octaves, etc.

If you've ever tried to make a jingle or a song using noteblocks but gave up because Minecraft's noteblocks can't pitch high or low enough, this project is for you! While vanilla Minecraft only supports 2 octaves, QuinnsBetterNoteblocks adds support for 8 octaves, which is more than enough to create any song! This pack is fully vanilla-friendly and only requires the installation of a resourcepack and a datapack.

|                |Vanilla Minecraft              |QuinnsBetterNoteblocks       |
|----------------|-------------------------------|-----------------------------|
|Octaves         | 2                             | 8                           | 
|Instruments     | 16                            | 16 (more coming!)           | 
|Total Notes     | 400                           | 1,536                       |

HIGHLY Recommended that you combine this with Vanilla Tweaks' [Visual Note Block Pitch](https://vanillatweaks.net/share#QB1Nyy)

## Features
 - Change the octave of noteblocks
 - Custom tuning wrench item
	- Shift + Right Clicking on non-note block changes mode
	- Shift + Right Clicking on note block upgrades noteblock
	- Octave Mode
		- Left Click decreases octave
		- Shift + Left Click plays current note
		- Right Click increases octave
	- Tuning Mode
		- Left Click decreases note
		- Shift + Left Click plays current note
		- Right Click increases note
		- Shift + Right Click increases note by 4

### 4x Note Block Pitch Range
Vanilla's Range             |  Quinns Better Noteblocks Range
:-------------------------:|:-------------------------:
!['vanillagif'](/Dev%20Tools/Assets/vanillagif.gif)  |  !['bettergif'](/Dev%20Tools/Assets/bettergif.gif)

### Note Block Wrench
Use this to unlock the potential of Better Noteblocks! Shift + Right Click converts any regular note block into an upgraded one.
#### Recipe
!['Recipe'](/Dev%20Tools/Assets/recipe.png)
#### Octave Mode
!['Octave Mode'](/Dev%20Tools/Assets/octave_mode.png)
#### Tuning Mode
!['Tuning Mode'](/Dev%20Tools/Assets/tuning_mode.png)

## Planned Features
- More features for the tuning fork such as
	- Copy/Paste Mode
		- Left Click pastes into note block
		- Shift + Left Click copies note block
		- Right Click with note block in offhand to paste settings into placed note block
		- Shift + Right Click with note block in offhand to paste settings into placed note block + 1 note
- Custom paintings that provide informational note block posters (like chords, notes, etc)
- More feedback for what note is playing when using wrench
- Updated visuals
	- Custom model on top of the noteblock to signify upgrade
	- Wrench will change textures to signify active mode
	- Noteblock texture with note info on it (use Vanilla Tweaks' [Visual Note Block Pitch](https://vanillatweaks.net/share#QB1Nyy) to get this feature)
- Potentially: more instruments

## Installation
### Singleplayer
1. Download the latest release from [Releases](https://github.com/Quinn-Codes/QuinnsBetterNoteblocks/releases)
2. Navigate to your [.minecraft](https://minecraft.fandom.com/wiki/.minecraft) folder
3. Drop ``QuinnsBetterNoteblocks_resourcepack`` into the ``resourcepacks`` folder
4. Open ``saves``
5. Open the world you want to add it to
6. Drop ``QuinnsbetterNoteblocks_datapack`` into the ``datapacks`` folder
7. Make sure you equip the resourcepack

### Multiplayer
Use these instructions if you are a server owner and would like to add QuinnsBetterNoteblocks to your server so any player can use it.
1. Download the latest release from [Releases](https://github.com/Quinn-Codes/QuinnsBetterNoteblocks/releases)
2. In your server, open the ``world`` folder
3. Move ``QuinnsbetterNoteblocks_datapack`` into the ``datapacks`` folder
4. Upload ``QuinnsBetterNoteblocks_resourcepack`` to a resource pack hosting website like https://mc-packs.net
5. Open your ``server.properties`` file and fill in the ``resource-pack=`` field with the download link and the ``resource-pack-sha1=`` field with the SHA-1 Hash. (if you use https://mc-packs.net these fields are auto-generated for you)

## FAQ
- Q: Why both a datapack and a resourcepack?
	- A: The resourcepack holds the sound files and the datapack handles the logic, both are needed.
- Q: Will this cause performance issues?
	- A: Any noteblock that is upgraded will spawn in 2 entities. There are also commands running every tick to check these entities. You can expect at least some extra impact on performance per note block. This project is still in its early stages, and I haven't yet tested the performance impact of it. That being said, it seems to have no impact on my frames or TPS in my testing world. I am also trying my best to keep this as optimized as possible while still providing the best features.
- Q: Why is there a barrier block above my note block?
	- A: When you upgrade a noteblock using the wrench, the vanilla note block noises need to be disabled to allow for the new BetterNoteblocks noises to play. The only way to achieve this is putting a block on top.

## Known Bugs
- Better Noteblocks have an extra 1 tick delay
	- As far as I know, there is no way around this due to how the datapack commands execute
- The following instruments are tuned 1 note off for an unknown reason (vanilla's F# is their G): Bell, Flute, Chime, Guitar, Xylophone, Iron Xylophone, Cowbell, Didgeridoo, Bit, Banjo