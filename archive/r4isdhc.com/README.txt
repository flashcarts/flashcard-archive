# Installation instructions for YSMenu on r4isdhc.com flashcards

DO NOT install YSMenu on the following flashcards:
    - No Year Number Dual Core r4isdhc.com flashcards
    - 2013 r4isdhc.com flashcards
    - NEW r4isdhc.com flashcards
Installing YSMenu on these flashcards can result in a brick!

r4isdhc.com RTS Black flashcards:
    Please follow the instructions for "How to use with YSMenu" section here: https://gbatemp.net/threads/607421/

2014+ r4isdhc.com flashcards:
    1. Download YSMenu from here: https://gbatemp.net/download/35737/
    2. Extract the YSMenu .7z file.
    3. Copy the files inside of the `DSTTi-clone YSMenu` folder to the root of your microSD card.
    4. Download R4.dat from the `/YSMenu/DEMON_common/` folder and place it in the root of your microSD card.

r4isdhc.com RTS Lite (No Year Number) flashcards:
    1. Download YSMenu from here: https://gbatemp.net/download/35737/
    2. Extract the YSMenu .7z file.
    3. Copy the files inside of the `DSTTi-clone YSMenu` folder to the root of your microSD card.
    4. Make a copy of `TTMenu.dat`, then rename this copy to `R4.dat`.

r4isdhc.com Christmas Edition flashcards:
    1. Download and extract the stock kernel for this flashcard to the root of your microSD card. You can find this in the `r4isdhc.com/old` folder.
    1. Download YSMenu from here: https://gbatemp.net/download/35737/
    2. Extract the YSMenu .7z file.
    3. Copy the files inside of the `R4-clone YSMenu` folder to the root of your microSD card.
    4. Launch YSMenu.nds from the flashcards file list.

2014+ r4isdhc.com flashcards:

There are two modern kernels that you can use to play games, these are YSMenu and R4iMenu 4.3 (r4isdhc.com_2014-and-above_DEMON_4.3).

Both kernels have their own little quirks. If you choose to use R4iMenu, you should only use the built-in cheat database. Other cheat databases can often be unusable depending on the length of the cheat names and descriptions. If the name of the cheat is too long, it will either be cut off, or the entire cheat list will appear to be corrupted. Cheats in R4iMenu can sometimes break gameplay too as the kernel seems to refuse to use certain cheat codes. R4iMenu also has some issues with homebrew compatibility, with some apps - such as TwiLight Menu++ - refusing to boot at all.

YSMenu does not have the same issues with cheat databases, but it is strict on what it will load. A game must have patches in YSMenu's database before it is able to launch. If the game you are trying to load doesn't have patches, an error code will be displayed and you will have to turn off your console. This is a major issue for new ROM hacks as YSMenu does not have patches for them. YSMenu also does not support any form of RTS.

Cheats:
    - YSMenu: TTMenu/usrcheat.dat
    - BL2CK: __rpg/cheats/usrcheat.dat
    - Original Kernel: _system_/usrcheat.dat
    - Dual Core Kernel 1.38 (old): __rpg/cheats/usrcheat.dat
    - RTS Black Kernel 3.2 (old): _system_/usrcheat.dat
    - Christmas Edition Kernel 1.17B (old): _system_/usrcheat.dat
    - 2014-2023 DEMON Kernel 4.0b (old): R4iMenu/usrcheat.dat
    - Silver RTS Lite Kernel 1.30 (old): SYSTEM/cheats/usrcheat.dat
