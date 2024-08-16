_DSMENU.DAT has been patched (by davidmorom) to fix an issue in both WarioWare DIY and Jam with the Band:
```
WarioWare DIY and Jam with the Band had always been problematic in these flashcarts, as the save type they use is not correctly supported by the kernel, due to a very stupid bug.

Recently I managed to patch this bug and both games now work perfectly. The change is just one instruction modification, from "mov r6,#0x9" to "mov r6,#0x0". This change prevents a 9 bits logical left shift on the save file sector addresses list, which is not needed at all, and is the reason that makes the games not compatible.
```

cheats (NDS):
__rpg/cheats/usrcheat.dat
