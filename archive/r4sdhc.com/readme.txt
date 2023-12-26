# Installation instructions for YSMenu on r4sdhc.com carts

**Do NOT install YSMenu on r4sdhc.com V3DSU carts as YSMenu will brick them!**

r4sdhc.com V1.4/V2.10T/V2.20T carts:
    1. Download YSMenu from here: https://gbatemp.net/download/35737/
    2. Extract the YSMenu .7z file.
    3. Copy the files from the `R4i-SDHC YSMenu` folder to the root of your microSD card.

r4sdhc.com original carts:
    - This flashcart only supports microSD cards up to 4GB in capacity.
    1. Download YSMenu from here: https://gbatemp.net/download/35737/
    2. Extract the YSMenu .7z file.
    3. Copy the files from the `R4SDHC YSMenu` folder to the root of your microSD card.
    4. Edit line 16 in the `TTMenu/YSMenu.ini` file to be `AUTO_BOOT=autoboot.nds` without the semi-colon.

Cheats:
    - YSMenu: TTMenu/usrcheat.dat
    - BL2CK (V3DSU carts): __rpg/cheats/usrcheat.dat
    - Original R4SDHC kernel (old): _system_/usrcheat.dat
    - V1.4/V2.10T/V2.20T kernel (old): R4iMenu/usrcheat.dat