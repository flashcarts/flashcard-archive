CycloDS Evolution Firmware v2.3
===============================

CycloDS Evolution Official Website: http://www.cyclopsds.com
Team Cyclops Forums: http://www.teamcyclops.com/forum

How to use
----------

The upgrade process is simple and painless. Just follow these easy steps:

 1. Place the "update.evo" file in the root directory of your MicroSD.
 2. Insert the MicroSD back into the CycloDS Evolution.
 3. Insert the CycloDS Evolution into your Nintendo DS.
 4. Power on the Nintendo DS and start CycloDS Evolution as you would normally.
 5. The update will be launched automatically. Follow the onscreen instructions.

Once the update has completed the "update.evo" file will be removed from your
MicroSD, so you do not need to remove it manually.

Change log
----------

- v2.3 (20/5/2011)

  + Common:
    * Miscellaneous game compatibility fixes
  + iEVO:
    * DSi mode is now supported on 3DS

- v2.2 (3/3/2011)

  + Common:
    * Game compatibility fixes (DSi 0120, 5418, 5424, 5435, 5444 and more)
  + iEVO:
    * Resolved MicroSD stability issue causing freezing in rare cases

- v2.1 (3/2/2011)

  + Common:
    * Added GUI screen capture option, for reviewers and skin testers. Enable via
      <enableScreenCapture> setting in config.xml then press SELECT at any point
      in the GUI to make a screen capture. A file named capture_XXX.raw will be
      output to your MicroSD card, which may be imported into photo editing software
      as a 256x192 raw bitmap, 3x 8bit interleaved channels
    * Fixed game compatibility regression with 0168, 0559 etc
  + iEVO:
    * Moonshell is now supported in DSi mode. Please ensure that you download and use
      the copy of Moonshell v2.10 from the CycloDS website

- v2.0 (1/2/2011)

  + Common:
    * The new and improved CycloDS GUI is now available for mainstream users,
      bringing with it improvements such as bookmarks, enhanced skinning, enhanced
      cheat code support, multiple save slots, file management and much more.
      Full documentation to follow on the CycloDS website
    * Fixed skin freezing bug
    * Game compatibility fixes (DSi 101, DSi 109, 5140, 5174, 5175, 5243, 5274, 
      5275, 5326, 5329, 5343, 5358, 5364)
  + iEVO:
    * First public stable firmware release for iEvolution
    * Added DSi mode homebrew compatibility layer
    * Fixed IPC bug relating to homebrew software
    * Improved compatibility with DSi enhanced titles

- v1.61 (22/12/2010)

  * Numerous game compatibility fixes including 5267, 5284

- v1.60 (25/11/2010)

  * Numerous game compatibility fixes

- v1.59 (9/5/2010)

  * Game compatibility fixes (DSi 0047, DSi 0054, 4341, 4716, 4723, 4726, 4757, 
    4778, 4831, 4851, 4856, 4868, 4883, 4900, 4904, 4913, 4916)

- v1.58 (22/3/2010)

  * Fixed Wii connectivity with recent Pokemon games
  * Fix for file time stamp issue
  * Fix for "argv" information passed to homebrew software
  * Fixed save size for 4323, 4568
  * Game compatibility fixes (DSi 0040, 4356, 4747, 4748, 4769)

- v1.57 (2/3/2010)

  * Fixed 'date modified' file issue, allowing last played file 
    view to function properly
  * Fix for CAS:POR (credit to yellow wood goblin)
  * Resolved a RTC related bug which should fix issues involving real-time
    events in some games
  * Added 24-hour clock setting to config.xml
  * Fixed NOR bugs with 3in1+
  * Game compatibility fixes (DSi 0025 wifi, 4252, 4340, 4510, 4644, 4646, 
    4663, 4666, 4702, 4708)

- v1.56 (18/1/2010)

  * Added Stealth Mode feature for anti-tamper protected games
  * Updated automatic game protection patcher
  * Many internal improvements and bugfixes
  * Game compatibility fixes (DSi 0010, DSi 0015, DSi 0021, DSi 0025, 3212, 3499, 
    3541, 4159, 4160, 4162, 4177, 4207, 4262, 4280, 4323, 4362, 4417, 4447, 4472, 
    4482, 4492, 4506, 4513, 4522, 4550, 4565, 4571, 4581, 4587, 4622 and more)

- v1.55 (11/9/2009)

  * DSL/DSi hybrid games are now supported (3938, 3949)
  * New view mode: sort by last played
  * "argv" information passed to homebrew software
  * Added the ability to customise the enhanced menu button trigger
    via config.xml
  * After an in-game reset, the last game played will be selected in the
    game list
  * Fixed Wii connectivity for Pokemon Platinum
  * While traversing directories, the position of the selection in parent
    directories is remembered (instead of the selection being reset to
    the first entry each time you return to a parent directory)
  * New config.xml options for setting the root directory for the game
    list, and customising the executable launched when "Media" is selected
    from the main menu (so you can select between Moonshell 1, Moonshell 2 etc)
  * Soft reset is now supported under Moonshell 2, and Moonshell 2 has been
    made the default media player
  * Fixed intermittent freezing issue with GTA:CTW
  * Game compatibility fixes (3538, 3607, 3812, 3872, 3874, 3960, 3966, 4125)

- v1.54 (16/3/2009)

 * Added automatic patcher for protected games
 * Partial support for EZ3in1+ (unfortunately, limitations with the new hardware
   prevent full support)
 * Problems with some kiosk demos resolved
 * Fixed bug causing skin cycling to freeze in some cases
 * Game compatibility fixes (3070, 3151, 3211, 3223, 3268, 3332, 3369, 3396, 3517)

- v1.53 (11/1/2009)

 * Linking between NDS and GBA pokemon games via EZ3in1 NOR supported
 * Game compatibility fixes (2746, 3191)

- v1.51 (27/11/2008)

 * Game compatibility fixes (2796, 2838, 3049, 3054)

- v1.5 (22/11/2008)

 * Added the in-game text reader feature
 * Battery saver mode added
 * An alternative folder layout for game saves and RTS files is now supported
 * Configurable rumble strength though settings menu
 * Fixes to the cheat code engine
 * GBA support dramatically improved and moved out of BETA. Saving problems
   should now be resolved and the 1MBit save type is now supported without
   the need to manually patch games
 * Classic NES Series GBA games are now supported
 * Added "cycle skin" feature which is similar to the random skin feature, 
   except that skins are cycled in order and are not chosen at random
 * Game compatibility fixes (2906, 2949, 2436, 2472)
 * Various other bug fixes and improvements

- v1.41 (1/7/2008)

  * Fixed "My Pokemon Ranch" Wii connectivity
  * Optimised and fixed cheat code engine
  * Increased the number of allowed fragments, which should reduce
    the "filesystem too fragmented" error
  * Game compatibility fixes (2385 + ingame menu for some games)
  * Added some advanced options to the XML configuration
  * Miscellaneous other improvements

- v1.4 (19/6/2008)

  * Homebrew soft reset added, allowing you to reset back to the CycloDS Evolution
    GUI from almost any homebrew software with a simple button combination
  * BETA GBA support added, allowing you to launch GBA games directly from
    the CycloDS GUI. ROMs are automatically patched when necessary, and save
    files are managed automatically by CycloDS (which are compatible with 
    GBA ExpLoader). Either CycloDS Mini/Micro or EZ3in1 is required for GBA support
  * Both NOR and PSRAM mode supported for GBA ROMs via EZ3in1
  * NDS Pokemon <-> Wii Pokemon Battle Revolution connection fixed for all regions
  * Added option of booting from slot 2 in either NDS or GBA mode
  * Added support for new 3in1 cards
  * 16-bit bitmaps now supported (skins + GBA frame)
  * Increased the number of allowed fragments, which should reduce
    the "filesystem too fragmented" error
  * Random skin selection has been made more random
  * When using EZ3in1, NDS Browser auto-patching now works after soft-resetting
    from a rumble enabled game
  * Game compatibility fix (2343)
  * Miscellaneous reliability and user-friendliness improvements

- v1.31 (5/4/2008)

  * Game compatibility fixes (2203, 2110, ingame menu + 2107)
  * Fixed a problem preventing RTS from functioning if the game
    filename contains unicode characters

- v1.3 (3/3/2008)

  * RealTime Save feature added, allowing you to save and resume game play
    at any time!
  * Fixed numerous compatibility issues
  * Improved overall reliability
  * NDS file extensions are no longer displayed in the GUI
  * Added the ability to exit the in-game menu by pressing the B button
  * Revised controls for the settings menu: A/RIGHT cycle item forwards, 
    Y/LEFT cycle item backwards
  * SlowMotion is now shown as a percentage rather than an arbitrary number
  * Fixed homebrew that use DLDI on ARM7 (DSVideo)

- v1.22 (5/11/2007)

  * Compatibility fixes
  * Fixed intermittent problem with random skin selection

- v1.21 (20/10/2007)

  * Miniaturized game icons are shown in list view
  * Random skin selection
  * Allow unlimited number of skins
  * Fixed GBA linking with 3in1 (disable Rumble)
  * Compatibility fixes

- v1.2 (26/9/2007)

  * Custom cheat code support added (PC-side cheat editor application included)
  * PC-side cheat editor can automatically retrieve up-to-date codes from the internet
  * Fixed Wii connectivity (Pokemon Diamond/Pearl and Pokemon Battle Revolution)
  * Several game compatibility fixes
  * DSLinux is now supported
  * Moonshell soft reset is now supported
  * RAM pack for Opera (clean rom) supported via CycloDS Mini/Micro and EZ3in1
  * Rumble for EZ3in1 supported
  * Completely new translations: Dutch, Greek, Indonesian, Malaysian, Russian, Tagalog
  * All text is now completely translated (GUI, ingame menu and the updater)
  * Updated DLDI driver, will now allow 3rd party loaders such as DSOrganise
    and DSChannels to load .NDS files
  * Date and time are now set properly for .sav files
  * Hold SELECT while launching homebrew software to disable DLDI auto-patching
  * Fixed cheat core bug
  * Will now try to execute ROM's even when auto-patching fails
  * Ingame menu changes:
    - Time is shown on the bottom left
    - Multi-lingual (uses same language as you have set for main menu)
    - SlowMotion adjustable between 3 different speed settings
    - Realtime cheat enable/disable
    - Separated "Return to Game" and "Return to Main Menu" in the in-game menu to
      help avoid accidentally executing a soft reset
    - Improved stability
    - Supported for more games
  * Menu GUI changes:
    - Multiple skins are supported, selectable in the settings menu
    - Added new file view mode, "list view"
    - NDS sleep mode is now supported
    - Improved menu file list sorting method
    - Folders starting with '.' are now hidden
    - Buttons for various dialog boxes
    - Press B to exit settings screen
    - Stopped game list from displaying invalid items
  * Many other miscellaneous fixes and additions

- v1.13 (24/6/2007)

  * Fixed a critical problem relating to game saves
  * Added partial Japanese GUI translation
  * Resolved compatibility issue with 1171

- v1.12 (16/6/2007)

  * Fixed a problem which prevented homebrew software from writing
    to the MicroSD card
  * Improved the compatibility with Slot 2 devices
  * Fixed a problem which made a few games hang with a white screen
  * Pressing 'B' in the cheat code list now returns you to the game list
  * Improved the speed of the "autoload" and "auto-boot to slot 2"
    features (now the CycloDS Evolution GUI is not displayed at all
    when either of these features is activated)

- v1.11 (12/6/2007)

  * Added autoload feature
  * Added auto-boot to slot 2
  * Resolved compatibility issues with games such as 1110, 1115 and 1127
  * Fixed a bug in the cheat core which would result in some games
    hanging with a white screen if cheats were enabled

- v1.1 (10/6/2007)

  * Enabled the cheat code functionality
  * Resolved several compatibility issues
  * Fixed download play with Yoshi Touch & Go
  * Minor improvements to the user interface
