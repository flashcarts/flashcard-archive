AceKard All-In-One (AK-AIO) v1.9.0 (http://akaio.net)
----------------------------------------------------

Credits
-------
AKAIO:
By Normmatt (http://normmatt.com), normmatt234 \AT/ gmail \DOT/ com
By Smiths of Emuholic (http://www.emuholic.com), smiths \AT/ emuholic \DOT/ com
By gelu (http://code.google.com/p/acekard-3in1/)
By yellow.wood.goblin (http://code.google.com/p/woodrpg/)

Based off of AKBBS' source contributions from the above and following authors:
Moogle
bliss (http://bliss.hanirc.org/blog)
kzat3 (http://kzat3.cocolog-nifty.com/blog/)

Special Thanks:
bd2rae (http://bbs.yyjoy.com/thread-45884-1-1.html)
Beta Testers (For finding many bugs).

What is This?
--------------
AKBBS has been usurped thanks to amazing efforts of Normmatt in merging firmwares!
AK-AIO is custom system software for *BOTH* the AceKard RPG and AK2/AK2i.

Base features
-------------
For those unfamiliar with all the additions the AKBBS (now AIO) software has in comparison to the stock firmware, here's a sampling of the bigger changes:

* Cheat Improvements - R4/XML Cheat File processing
* "Future Adaptable" Multi-loader support
* Multiple Save Slots per title - with copying between slots
* Slot-2 Integration - EZ3in1 (w/GBA Patching) and older FlashAdvance Pro carts
* Shortcut tweaks
* Multi-page Start Menu
* Filetype-based external icon support
* Per-Rom settings for soft-reset/download play/cheats
* Copying/Cutting/Deleting SAV files along with NDS files
* Several improvements to 2byte language support
* SAV backup/restore from within GUI (.SAV<->.BAK)
* Wifi updating of Loaders

Version History
---------------
AK-AIO 1.9.0
+ More of a "Game Fix/Compatibility" release
+ Pokemons, Pokemons, Pokemons compatibility fixed
+ Updated to compile with latest DevKitArm
+ Cheats updated to CMP Cheat code Database version 6/29/2012

AK-AIO 1.8.9z
+ All this time for just a "z" in file version? Yes.
+ Finally fixed per-file/extension custom icons... broken since 1.8.0
+ Update loader to Mighty Morphin Power Loader release (Jan 2012)
+ Not much else; poor DS seems to be lonely with its 2D-ness :(

AK-AIO 1.8.9
+ Internal name listing mode will show the filename if there's a lack of info (e.g. - DS Program File)
+ Arm7 fix for slow windows in 1.8.8
+ Many, many, many game fixes
+ New default skin (EvoI)
+ Optimizations in icon display
+ Code cleanup to reduce memory usage


AK-AIO 1.8.8a
+ Fixed display problems with some bmp files.

AK-AIO 1.8.8
+ Updated to devkitARM r34 and libnds 1.5.2
+ Added two small icon view modes: Filename and Internal Name
+ Touchscreen scrolling has been inverted by default
  - Mimics touchscreen phone/tablet scrolling
  - Can be toggled in Advanced Settings screen
+ FAS1 Modifications to allow modifying specific SRAM Banks and dumping the entire 256KB SRAM
  - Options in the FAS1 Menu
+ Added support for 24bit and 32bit bitmaps for skins
  - Note these get down sampled to 16bit so no increase in available colors.

AK-AIO 1.8.7
+ Added Wifi Cloud Save button to Akmenu.
+ Added Russian translation (Thanks mc_B3oWoL).
+ Added Danish translation (Thanks oz8hp).
+ Updated Korean translation (Thanks cherries4u).
+ Updated Spanish translation (Thanks felixsr).
+ Updated Dutch translation (Thanks Jodyza).

AK-AIO 1.8.6a
+ Fixed real cart being detected as clone after softreset.

AK-AIO 1.8.6
+ Fixed left spin box sometimes having text on it.
+ Fixed spin box width calculation.
+ Cheat Window now uses 60% less memory for scrolling cheats/notes. Finally!

AK-AIO 1.8.5
+ Fixed usrcheat parsing bug where enabled codes in folder caused a crash during parsing.
+ Fixed PassMe booting for Slot 2 (L+A on Slot 2 icon).
+ Fixed bricking on old AK2s.

AK-AIO 1.8.2
+ New Anti-Anti-Piracy work around (enabled by default).
  - Works on all SD and doesn't break download play.
+ Fixed various ak2 only bugs. (global settings being reset after softreset, etc)

AK-AIO 1.8.1
+ Updated French translation (Thanks corenting).
+ Updated German translation (Thanks SignZ).
+ Updated Korean translation (Thanks cherries4u).
+ Fix GBA Auto saving.
+ Fix some corruption issues.
+ Optimize .cc parsing.

AK-AIO 1.8.0
+ New Filesystem library (should be more reliable and less buggy than libfat).
+ Adjusted key repeat delay from 3 seconds to 1 second.
+ zLib updates since lord knows how long it's been since that was first added
  - Credit to GPF for sources (http://gpf.dcemu.co.uk/)
+ Added ability to delete non-empty folders.
+ Changed the way the list is sorted so its case insensitive.
+ Fix custom icons.
+ Updated French translation (Thanks corenting).
+ Updated German translation (Thanks WiZaRd).
+ USRCHEAT.DAT is now maintained by yusuo and hosted at akaio.net
  - TempDB in Wifi Plugin replaced by AKAIO (yusuo)
  - WhatsNew works for it as well
  - We have complete control of your cheats. Be afraid.
+ Added Anti-Anti-Piracy work around.
  - This seems to break single card download play atleast for now so its disabled by default.
  - On AKRPG it creates a filename.ap file for each game you launch with the option enabled.
  - On AK2 it creates an ap.bin file in the __aio folder.
+ Fixed usrcheat.dat parsing when the game is the last in the file.

AK-AIO 1.7.1
+ Updated English language file.
+ Added option to disable Icon Animations.
+ AKRPG SD now works the same way as AK2/AK2i.
  - Direct SD Saving.
  - Save size set to 512KB unless a bigger size is needed.
+ Added some shortcuts:
  - L+UP = Cheats enabled for selected game.
  - L+DOWN = Cheats disabled for selected game.
  - L+LEFT = Soft-Reset enabled for selected game.
  - L+RIGHT = Soft-Reset disabled for selected game.
+ Added Cheat Scrolling speed option
+ Fixed Wifi Settings Window not saving what you've chosen
+ Wifi easter egg?

AK-AIO 1.7
+ Updated Brazilian Portuguese translation (Thanks Cereal Killer).
+ Updated Polish translation (Thanks Tatsuhikki).
+ Updated Czech translation (Thanks penthaler).
+ Added Norwegian translation (Thanks Glisern).
+ Updated Italian translation (Thanks Miottolo).
+ Updated Korean translation (Thanks cherries4u).
+ Added Thai translation (Thanks kikukiku).
+ Add option to disable homebrew softreset globally.
+ Add homebrew softreset support for libnds 1.4.3 (IRQ hooking only)
+ Updated savelist.bin
+ Added Yellow Wood Goblin's updated GBA ROM patching routines.
+ Fix GBA rom as shortcut detected as NDS rom bug.

AK-AIO 1.6 RC2
+ Show error screen on boot if your using a clone.
+ Added Korean language (Thanks cherries4u).
+ Added Czech language (Thanks penthaler).
+ Fixed hiddenFileNames ini bug.
+ Now shows an error if a clone is detected.
+ Updated savelist.bin

AK-AIO 1.6 RC1
+ Fixed Internal Name language setting.
+ Fixed Time Stamps on save files.
+ Fixed Setting Skin and Language at the same time not saving.
+ Homebrew Softreset (AK2/AK2i Only).
+ AK+ loader removed (Unsupported since it was first added in 1.0).
+ Fixed some cheat window bugs.
+ Fixed custom icon bug.
+ Updated homebrew argv support.
+ Updated savelist.bin

AK-AIO 1.5.1
+ Fix Date/Time retrieved from files.
+ Fix Cheat Window Freeze/White screen problem. (Thanks Baka_Kyuubi84 for the test case)
+ Added Swedish language file. (Thanks the_engineeer)
+ Added Brazilian Portuguese language file. (Thanks Cereal Killer)
+ Updated savelist.bin
  + Zelda now defaults to the required 1MB (If your using a 512kb save you will need to start again because the save file is corrupt, Alternatively you can manually set the save size backto 4Mbit and continue but it will cause problems later into the game).
+ Fix disk icon appearing over other windows.
+ Settings window shows long filenames for skins and languages now.

AK-AIO 1.5
+ Fixed issue with the hiddenFileNames globalsettings option not accepting non lowercase filenames.
+ Optimizations to the AK2 dldi should be a little quicker now.
+ Update Dutch translation (Thanks MarioWaza).
+ Update Spanish translation (Thanks Pendor).
+ AK2/AK2i clones are now officially unsupported.
+ Gba icon has been removed from main selection screen on DSi.
+ Removed outdated plugin system.
+ Per rom GBA frame support (256x192x15bpp)
  - Place BMP with internal game id of gba rom in __aio/frames.
+ Added support for save sizes up to 256Mbit (32Megabyte).
+ .sav is now default save extension.
+ Reverse Alphabetical List sorting (set sortListAlpha=0 in globalsettings.ini).
+ Auto-Anti-Piracy Patcher updated.
+ ARGV support for homebrew.
+ New DSi detection (Shouldn't show slot2 icon after softreset on ak2i now).
+ Disable start menu by adding "LockStartMenu = 1" to your globalsettings.ini
+ Fixed Trainer Toolkit support.
Please refer to LoaderChangelog.txt for compatibility fixes.


AK-AIO 1.4.1
NOTE: It's recommended you delete your optionlist.bin file in the __aio folder when updating to this release as the file structure has changed.
+ Soft reset Improvements.
+ Fixed corrupt Language files (Italian, German and Japanese).
+ Added missing font needed for chinese.
+ Added setting for Hide Extensions to the settings window.
+ Fix optionlist.bin corruption.
+ Spin boxes wrap around.
+ Game Fixes (DMA-Save Mode):
  - Princess Maker 4
  - Club House Games
  - Mario and Luigi RPG 3
  - Rune Factory A Fantasy Harvest Moon
  - Animal Crossing (Currently cannot be run in this mode, force usage of DMA mode).
  - Hidamari Sketch Dokodemo Sugoroku x 365
+ Game Fixes:
  - Grand Theft Auto Chinatown Wars (U) Thanks gelu.
  - Mario and Luigi RPG 3 (J) (new patch, thanks gelu).
  - Layton 3 (J) (new patch, thanks gelu).
  - Animal Crossing.
+ Updated French language (jp33).
+ Fix backlight always enabled on DS Phat.
+ Fix the Per-File icon problem if you have similar games (e.g. - Golden Sun.gba and Golden Sun 2.gba)
  - In blissland, GOLDEN~1 is the same as GOLDEN~5
+ Wifi Updater has lots of fixes relating to GBATemp's new, crappy, server and its timeouts
  - We appreciate the hosting, but seriously... everything needed to be rewritten to adapt to the crap speeds
NOTE: DMA-Save mode is now default so DMA mode (red loading text) is now enabled by holding X during loading.

AK-AIO 1.4
+ Settings window uses tabs now, merging Settings, Advanced Settings, and Patches options (Thanks Gelu)
  - Use L/R to cycle through tabs
+ Misc cleanup of the gui.
+ 3in1 options now have FAS1 settings merged (detects 3in1/FA at selection, displays options accordingly)
+ Language files have some addition "title" additions/changes
+ Leapyear code fixed because the DS sucks at reporting variables nicely.
+ Updated German language (moviecut).
+ Reset more of arm7 before runing a game (Thanks Gelu).
+ 3in1+ Fix for Opera (Untested, Thanks cory1492).
+ Game fixes:
  - 3369 Mario and Luigi RPG 3 (J) fixed.

AK-AIO 1.3.5 (Unreleased)
+ Game fixes:
  - 0645/0777 Star Trek Tactical Assault
  - General save fixes. (Thanks Gelu for noticing a silly bug).
+ New Patching Mode hold X while launching a rom.
  - Fixes video and sound glitches which occur in old patching modes.
  - NOTE: This is still experiental so it isn't default.
+ Folders now show their size in the Info window.
+ Soft Reset fixes.

AK-AIO 1.3.1 (Unreleased)
+ Game fixes:
  - 1752/2314 My Spanish Coach fixed.
  - 2243/2412 Pokemon Mystery Dungeon Explorers of Darkness fixed.
  - 2385 Daigasso Band Brothers DX fixed.
  - 2906/2971 Star Wars The Clone Wars Jedi Alliance fixed.
+ Unnecessary Guru Meditation screens on the AKRPG is fixed.
+ Soft Reset fixes.
+ Copying files should work better.
+ Game icons that rely on the nds firmware's background will display properly (Thanks Gelu).
+ Misc cleanup.

AK-AIO 1.3
+ AK2i support (options that could potentially harm AK2i are disabled)
+ Loaders are now external and can be updated separately to the GUI.
  - Updated Wirelessly! (choose Loader Update in Wifi Update option of Start Menu)
  - Small changelog, download, update all possible
  - Loaders only updated for card being used (e.g. - AK2 users only download ak2loader)
  - Resume supported
  - Many loaders are beta, know this and shut up
  - Manual download page @ http://akaio.gbatemp.net/loaders/
+ Wifi Cheat Update has resume support!
  - Prompts after confirming you wish to "Try Again"
+ Files are now sorted alphabetically (Forced at the moment, sorry).
+ Added Some of Gelu's patches:
  - Faster Directory Listing.
  - New List mode - Internal nds names.
  - Lots of Soft Reset Fixes for the AKRPG.
  - new DMA mode and BBDX save fix for the AKRPG.
  - font system (fully supports unicode now :D).
  - New FIFO IPC System (Behind the scenes stuff).
  - Massive amount of soft reset fixes mainly for the AKRPG.
  - Game fixes (Brain Age 2 (K), Chrono Trigger (U/J),...).
  - Added a few game related fixes (Think Kids, Tropix, Bleach 2).
  NOTE: because of new font system, language files now need to be utf8. Some have been converted such as English and Japanese but others will need to be saved as utf8 to work properly.
+ Japanese games now show Japanese characters in rom info window when language isnt set to Japanese
+ Added a few game related fixes (Yoshi's Island, Star Trek, NSMB).
+ Files are now sorted alphabetically (Forced at the moment, sorry).
+ Pokemon Diamond/Pearl/Platinum can now read saves for R/S/E/FR/LG from ewin and 3in1 (AK2 Only for now).
+ Cheat engine fixes. (AK2 and AKRPG only for now).
+ Optimizations all round (Shouldn't have any lag in GUI anymore, also shouldn't experience any lag while saving).
+ Italian language added, language updates for English
+ New 3in1 options window.
+ Show GBA internal name in Internal view mode.
+ 3in1 internal GBA rom header stuff and work on Save/Load prompts in 3in1 options window.
  - Enable/Disable saving 3in1 SRAM on startup (Enabled by default)
  - Enable/Disable prompting before saving/loading SAV<->SRAM (recommended!)
  - Enable/Disable the Universal Sleep Hack for GBA games
  - Blank NOR button added for quick erase
  - Dump SRAM button will manually dump the SRAM to a timestamped .sav file in the root
  - 3in1+ support (untested, but routines and discovery are in, Opera and Rumble sources not available yet)
  - Thanks to all donators!
+ Fixed some issues with the cheat window.
  - Folders that only allow one cheat selected now function properly
  - Separate icon for skinners for single-select folders (see included skins)
+ Animal Crossing cheats on AK2. (Use the v1.1 rom as v1.0 will not work anymore).
+ Unicode font loads on a per-ROM basis
  - Default font is "kochi-mincho-subst.pcf" in /__aio/fonts directory, old unicode font removed (was 2x the size)
  - Skinners may add their own custom font to their ui's directory
  - New line in uisettings.ini "customUnicodeFont = xxxxxx.pcf" will load that font instead of default
+ Ability to hide extensions by manually adding "hideExtension = 1" to globalsettings.ini
+ DMA mode on AK2 (Hold A while loading a game to use non-DMA mode: Red text = DMA / Blue text = non-DMA).
+ New Super Mario Brothers Minigames on AK2: If they don't work, set Download Play to "Disabled" and boot in non-DMA mode (hold down A while loading)
+ Misc bug fixes (Too many to list).

AK-AIO 1.2
+ New AKRPG/AK2 Detection Routine which has proven to be much better
+ Cheat Update functions run from plugin, giving full memory access to it and allowing updates without full AKAIO updates
  - Can choose to download USRCHEAT.DAT or CHEATS.XML and whether or not to display "Whats New" before launching
  - Should be much more stable, perhaps a teeny bit faster
  - Third option in "which cheat file to download" box displays the setting window at plugin launch, can be used for future expansion
+ Uses gelu's latest fixes for BBDX on the RPG (only works from MicroSD) - excellent work, gelu!
  - Also has some other fixes gelu's put in for 3in1 NOR erasing, etc.
  - gelu = the AKRPG master.
+ Preliminary AK+ Support. Very preliminary. As in, no help offered but know it's still being worked on (See: AK+ SUPPORT)
+ New Experimental Cheat engine for AK2 and AKRPG, please report any bugs
+ EZIV compatiblity fixed without need for special line in globalsettings.ini
+ Scrolling Non-unicode Cheats/Notes, toggle in Advanced Options (default: on)
  - Can also call cheat window in ROM Properties with SELECT (if button is visible)
+ Simple Internal Text Reader
  - System Settings -> TXT Viewer
  - Parses text, add bookmarks with X, scroll between bookmarks with L/R Buttons
  - Not as fast as native TXT plugin due to pre-processing of text files, perhaps if we had the TXT Plugin source things could be done, but that would make sense.
+ Per ROM rumble settings, ROM Options window
+ Listview mode remembered
+ 3in1 Support should be fixed, with thanks to cory1492 for testing
+ GBA Frame issue with Slot-2 booting from main list fixed
+ Asian languages should be better supported, since we're compiling the menu with DevKitARM 21
+ Variable Height Scrollbars and clickable arrows in cheat window/internal TXT viewer. 3 new BMPs for skinning: scrollbar_t.bmp/scrollbar_m.bmp/scrollbar_b.bmp
+ Super awesome hidden poweroff button in help window, add your own "poweroff.bmp" to "__aio" for fun


AK-AIO 1.1
+ USRCHEAT.DAT wifi updating support from within shell
  - Connects to Narin's GBATemp site, displays WhatsNew.txt, downloads, unzips, replaces in one step
  - UpdateDB option in Start Menu -> More -> UpdateDB
  - zlib thanks to GPF (http://gpf.dcemu.co.uk/)
  - Download speed limited by DS routine IPStack
+ (AK2) Alternate loader support, place loader(s) in "__aio/ak2loader/"
  - ROM options window, select the AK2 loader to use to launch ROM
  - Compatible with AceKard official loaders
+ (RPG) uses gelu's latest 4.09e13 softreset routines
  - Updated 3in1 routines to all of gelu's latest
+ Fixed Dragon Quest 5 (AK2/AKRPG)
  - Can now get off the ship and save file wont be rolled back
+ Can change save file extension (.nds.sav or .sav)
  - Extension conversion: .SAV file Info Window, press "Save Ext." button
  - Will convert all Save Slot SAV files as well
+ Scans for cheats on ROM Info Window (.DAT only), if exist "Cheat" button displays
+ Per file icon support (32x32x15bpp)
  - place BMP with same name in same dir as file (eg: nesDS.bmp for nesDS.nds)
+ (Source) Variable spinbox width/General cheatlist cleanups/Scrolling Messageboxes
+ (Source) Minor changes to the cheat window
+ Fixed save size problems
  - Shouldn't have any more problems with save sizes
+ Misc Skinning fixes
  - Fixed problem with Adv.Evo skin
  - Form titles moved up 1 pixel
+ SAV<->BAK routines now use native AK functions

AK-AIO 1.0
+ Runs on both AK2 and AKRPG
+ Uses gelu's latest AKRPG rom loader
+ Uses latest AK2 4.07a16 rom loader
+ Contains everything from AKBBS1.99
+ Future support for larger than 4mbit save types (only supports 64mbit at the moment)
+ Applied Bliss' AR Engine fixes to the AKRPG
+ Hopefully fixed most of the soft reset issues with the AKRPG

Special Notes
-------------
Seeing as this release has experimental support for saves ranging all then way up to 128mbit, please err on the side of caution and backup your saves before using this firmware.
The "__RPG" and "__AK2" directory is now simply called "__AIO"
Existing users should make sure to rename their system directory, and update globalsettings.ini to reflect the new hidden directory.

Known Bugs
----------
There are no known bugs

ToDo
----
* Fix any bugs that crop up

Also
----
Cheats included are from Rayder's awesome compilation at GBATemp, now maintained by Narin, and are current as of the date of this release.
For the most up-to-date files, check GBATemp's release site (http://cheats.gbatemp.net/), either via PC or by using the "UpdateDB" option in the start menu.
