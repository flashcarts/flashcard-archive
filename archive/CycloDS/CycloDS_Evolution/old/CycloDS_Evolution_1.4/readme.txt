CycloDS Evolution Firmware v1.4
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
