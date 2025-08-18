 !! NOTE FOR EZ FLASH V USERS !!
----------------------------------

If your EZ V cannot boot kernel 2.0RC, you may be on an outdated version of the bootloader!

Hold R while booting your EZ Flash V to enter the firmware updater.
If you are on the older bootloader, you will see a black background with white text.
You will have to upgrade the bootloader if this is the case for you.

If you see a blue background instead, you are already on the newer bootloader.
Make sure that you are using a 2GB microSD card or smaller as the EZ V does not support SDHC (unlike the EZ V+), and that it has been formatted to FAT16.

 Upgrading the bootloader
--------------------------

! Only follow these steps if you are on the outdated bootloader !

The update required for the bootloader can be found in kernels 1.68 and 1.70. You can find these in the old folder.
Download either one and extract the zip to the SD card - make sure that "EZ5upldr.bin" is present on your SD card before continuing.

Make sure to plug in your DS so that it does not lose power.
Hold R while booting your EZ Flash V to enter the firmware upgrader, then press R to start the process.
Once it is done, press A to boot into the kernel to verify that the cart still works.

You can now remove the outdated kernel from your SD card and replace it with kernel 2.0RC.
