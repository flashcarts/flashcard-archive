_DS_MENU.DAT and _DSMENU.DAT have been patched (by davidmorom) to fix an issue in both WarioWare DIY and Jam with the Band:
```
WarioWare DIY and Jam with the Band had always been problematic in these flashcarts, as the save type they use is not correctly supported by the kernel, due to a very stupid bug.

Recently I managed to patch this bug and both games now work perfectly. The change is just one instruction modification, from "mov r6,#0x9" to "mov r6,#0x0". This change prevents a 9 bits logical left shift on the save file sector addresses list, which is not needed at all, and is the reason that makes the games not compatible.
```

Compatible with:
 - Ace3DS+
 - Ace3DS X
 - ### in 1 combo cart
 - r4azure.com carts
 - r4inp.com carts
 - r4isdhc.com.cn carts
 - r4iwood.cn carts
 - r4isdhc.hk 2020+ carts
 - r4li.com carts
 - r4infinity.com 2
 - r4ixds.com 2014 white version
 - woodr4isdhc.com carts
 - ge.ndsi.in GEi HOT
 - (please raise an issue if you think your cart is an Ace3DS+ or an R4iLS clone!)

cheats (NDS):
__rpg/cheats/usrcheat.dat
