# iso-depatcher
Extracts the patched files from prepatched gc/wii games.

How to use:

    iso-depatcher.bat drive:\path\to\normal_game.wfbs drive:\path\to\patched_game.wfbs

It is imperative that you put the unpatched version of the game before the patched version of the game, due to the way jdupes handles duplicates. The script supports all game formats supported by wit. 

Setup: Download jdupes and wit, extracting them to the same directory as the script.

A linux/mac version is possible, as the dependencies are multiplatform, or have equivalents, but I have no plans right now to make one. 

Dependencies:</br>
[wit](https://wit.wiimm.de/)
</br>[jdupes](https://github.com/jbruchon/jdupes)
