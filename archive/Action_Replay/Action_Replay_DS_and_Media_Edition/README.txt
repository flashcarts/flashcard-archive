Recovering a bricked red-label, media edition, or pre-DSi Pokémon ARDS (only tested on DS Phat/Lite):
HW0 (USB mode works on <=1.55):
Install CodeManager 1.00 and the driver (must use WinXP/an XP VM with USB passthrough/32-bit Windows/or force driver signatures off).
Connect the USB side of the ARDS (device will show up in devmgmt.msc, if it's unknown, update the driver from there, pointing at the folder)
Run 'ARDS_hw0_1.02.nds' from a flashcart.
Swap to the ARDS, tap the mouse icon if it doesn't automatically enter PC mode.
Drag&Drop 'ARDS_HW0_1.55.bin' on the top section of CodeManager (*above* the codelists, or it'll parse wrong)
Wait for the firmware to upload, confirm saving it afterwards.
Wait for the reboot prompt, reboot your console, firmware should now load properly.
Check if code upload works properly. If not, see later section.

HW1 (USB Mode works on >1.5X):
Install CodeManager 1.25 and the driver (standard for XP/32-bit, x64 for Vista+ 64-bit)
Connect the USB side of the ARDS (device will show up in devmgmt.msc, if it's unknown, update the driver from there, pointing at the folder)
Run 'ARDS_hw1_ME_1.71.nds' from a flashcart.
Swap to the ARDS, tap the mouse icon if it doesn't automatically enter PC mode.
Drag&Drop 'ARDS_HW1_1.71.bin' on the top section of CodeManager (*above* the codelists, or it'll parse wrong)
Wait for the firmware to upload, confirm saving it afterwards.
Wait for the reboot prompt, reboot your console, firmware should now load properly.
Check if code upload works properly. If not, see later section.

Media Edition (microSD slot) recovery:
Install CodeManager 1.25 and the driver (standard for XP/32-bit, x64 for Vista+ 64-bit)
Connect the USB side of the ARDS (device will show up in devmgmt.msc, if it's unknown, update the driver from there, pointing at the folder)
Run 'ARDS_hw1_ME_1.71.nds' from a flashcart.
Swap to the ARDS, tap the mouse icon if it doesn't automatically enter PC mode.
Drag&Drop 'ARME_2.05_Full.bin' on the top section of CodeManager (*above* the codelists, or it'll parse wrong)
Wait for the firmware to upload, confirm saving it afterwards.
Wait for the reboot prompt, reboot your console, firmware should now load properly.
Check if code upload works properly. If not, see later section.
Codelist SD import/export may not work on 2.05 (but it has better game compatibility), hence 2.01 is also provided.

Media Edition (microSD slot) upgrade:
Install CodeManager 1.25 and the driver (standard for XP/32-bit, x64 for Vista+ 64-bit)
Connect the USB side of the ARDS (device will show up in devmgmt.msc, if it's unknown, update the driver from there, pointing at the folder)
Launch your ARME, go into Action Replay mode, tap the mouse icon if it doesn't automatically enter PC mode.
Drag&Drop 'ARME_2.05_Upgrade.bin' on the top section of CodeManager (*above* the codelists, or it'll parse wrong)
Wait for the firmware to upload, confirm saving it afterwards.
Wait for the reboot prompt, reboot your console, firmware should now load and display 2.05 in AR mode.
Check if code upload works properly. If not, see later section.
Codelist SD import/export may not work on 2.05 (but it has better game compatibility), hence 2.01 is also provided (see recovery, or write the CCAR header with ards-firmwaretool).

If you can't add codes (not enough free space):
Hold A+B, followed by Start+Select as soon as the white screen (before unlicensed text) appears.
ARME users: hold all four buttons right after tapping to enter AR mode, before loading appears.

External sources:
ARDS FirmwareTool: https://github.com/RattletraPM/ards-firmwaretool
CodeManager 1.25: http://uk.codejunkies.com/support/article.aspx?article_id=417
fw1.55: http://web.archive.org/web/20131011070331if_/http://www.datelcustomerservice.com/files/NDS-ARDS_firm_1_55.zip
fw1.71: http://uk.codejunkies.com/support/article.aspx?article_id=434
fw2.05 (upgrade): http://web.archive.org/web/20141120191443if_/http://www.datelcustomerservice.com/files/NDS-ARME_firm_2_05.zip

Missing: Pokemon ARDS dump/fw.
Untested: Recovering with a DSi/3DS. May work from TWiLightMenu or ntr_launcher with the AR already inserted, only glitched out for me.

Further interesting shenanigans:

This trilogy of blog posts fixing a bricked HW0 unit.
https://blog.claranguyen.me/post/2022/06/20/ards-breakdown-pt1/
https://blog.claranguyen.me/post/2022/07/10/ards-breakdown-pt2/
https://blog.claranguyen.me/post/2022/08/06/ards-breakdown-pt3/
My first ARME was bricked the same way as described in pt2 but at offset 0x5556. One byte off.

AR Media Edition can access the Max Media Player Microdrive / CF Dock contents.
It also shares a DLDI with the ARDSi-µSD and Games'n'Music. It even boots TWiLightMenu. Painfully slowly.

Why 1.02 for HW0?
Mine came with 1.54, and constantly spat out "Error!" when connected to CodeManager. Swap-booted 1.55 didn't wanna talk to any version either.
Turns out, 1.02 works fine. And so does 1.55 *after* flashing it through 1.02. Datel hardware is just weird sometimes.