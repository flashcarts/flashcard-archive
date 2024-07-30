[English]
Note: This Upgrade package is firmware 1.45 for 8G and 16G DSLinker both.
Important: This upgrade need to format DSLinker, please back your files. 

Q:How to upgrade the firmware of DSLinker?
1.Insert DSLinker Writer into slot 2 and insert DSLinker into slo 1.
2.Use USB cable connect to PC USB port directly. (Please do not use extension USB cable)
3.Hold the "up" directionnal button and turn on power.
4.still holding "up", press "L+R+A+B", will enter upgrade mode(red color text).
5.Double click "NAND_ALL.bat"to run upgrade program. 
6.Quick Format DSLinker(method list below)
7.Copy "xmenu.dat" to DSLinker
8.After the first time enter "GAME MODE", DSYSTEM folder will be set up.

Note: firmware 1.45 can only work with XMENU 2.53, so we need to upgrade them together.

Q: What's new for firmware 1.45 and XMENU 2.53?
1. Download Play Support. 
2. Added AUTO detect save type. (SELECT + LEFT/RIGHT change, if game can not run, please change save type.)
3. FLASH 4M save support. 1158 Zelda perfect running.
4. RESET to menu support. Set save type to AUTO will support RESET function. Hotkey: (L+R+A+B+X+Y)
5. Added wireless logo if game support downplay. 
6. Added a new FORMAT MENU. Holding "START+SELECT+A"to enter.
7. Save type update to 1323
8. Changed "LOADING" picture to circle 9 points. 

Q: How to quick format DSLinker? 
1. Insert DSLinker Writer into slot 2 and insert DSLinker into slo 1.
2. Holding "L+R+A+B+DOWN" or "START+SELECT+A"to enter DSLinker system, will enter quick format program mode.
3. Firmware 1.45 Added a new format function. Holding "START+SELECT+A"to enter DSLinker system. A FORMAT MENU will appear.
1.CANCEL
2.QUICK FORMAT
3.FULL FORMAT (If full format done, will not appear)
[UP/DOWN select, press A confirm]


Q: How to FULL format DSLinker? (Full format need more than 10mins, because of writting test)
1. Insert DSLinker Writer into slot 2 and insert DSLinker into slo 1.
2. Holding "L+R+Select+START+UP" or "START+SELECT+A" when enter DSLinker System, will enter FULL format program mode.
3. Firmware 1.45 Added a new format function. Holding "START+SELECT+A"to enter DSLinker system. A FORMAT MENU will appear.
1.CANCEL
2.QUICK FORMAT
3.FULL FORMAT (If full format done, will not appear)
[UP/DOWN select, press A confirm]
* Tips: I suggest dslinker user make a FULL format, if there is something wrong with the DSLinker.(one time FULL format is enough)

Useful suggestion:
1. 98\win2000 user should "eject" the udisk safely before close the DS, because 98\win2000 background program still writting the flash after finish copy files, otherwise it maybe corrupt the fat of dslinker.
2. winxp user should wait 3 seconds after finish copy files, otherwise it maybe corrupt the FAT of dslinker.
3. At USB mode, if the text flashing red color, that mean writting the dslinker, please do not turn off the power, otherwise it maybe corrupt the FAT of dslinker.
4. If chkdsk program can not fix the FAT error, use DSLinker quick format can recover.
5. Do NOT format the dslinker by windows, it will slow down the UDisk system. Use DSLinker quick format can recover.
6. Suggest use "SD Formatter V2.0" to format DSLinker, can be download from www.sdcard.org
7. Japanese, Trandition Chinese support. Copy Moonshell system.fon system.12u system.ank to DSYSTEM
8. I suggest dslinker user make a FULL format before use it. Full format need more than 10mins, because of writting test
9. Battery test hold key change to "L+R+SELECT" when enter DSLinker System.

[Chinese]

升级说明:
1  USB连接电脑进入SAFE 红字模式(开机按住L+R+A+B+UP)。
2  运行NAND_ALL.BAT 进行升级。
3  重新启动NDS 并格式化FAT(开机按住L+R+A+B+DOWN)。
4  电脑识别出移动盘。
5  xmenu.dat复制到移动盘。
6  从网上下载最新的savetype.sdb存档列表放到DSYSTEM中。
7  复制nds rom到移动盘。
8  拔掉USB卡 重新开NDS 进入菜单。

一些功能:
1  增加了一个格式化选择菜单，开机按住SELECT+START后同时在按A健确认进入
  共有3个选项:
  CANCEL           =   取消，不进行格式化
  QUICK FORMAT   =   快速格式化
  FULL FORMAT     =   完全格式化(已经做过的就不再显示)
2 增加单卡且未刷机的Download Play支持
3 支持downplay的rom图标右侧会显示"无线传输"标志
4 如果发现downplay影响了兼容性可以在global.ini中关闭  
5 如果AUTO模式下遇到游戏白屏，SELECT+LEFT/RIGHT选择正确的存档类型
6 增加软复位(L+R+A+B+X+Y)，软复位的打开: 把游戏的存档类型选成AUTO后，就对这个游戏启用软复位，其他存档类型默认关闭软复位
7 完善FLASH 4M类型 1158塞尔达完美运行

一些提示：
1  98\win2000的用户 每次复制文件后 都要手动选择"弹出"移动盘，然后再关机，因为98\win2000复制文件完成后还在后台写flash,直接关机容易丢fat。
2  winxp用户 每次复制完文件后等3秒钟，再关机。如果你仔细观察的话可以发现，xp复制文件完成1~2秒钟后，NDS上的字又会红1下，说明最后还写了一些东西。
3  U盘模式下 nds上的字 变红说明正在写flash，这时不要关NDS,否则容易丢文件，严重的容易丢FAT
4  如果遇到chkdsk无法修复的fat错误，可以用(开机按住L+R+A+B+DOWN)来格式化。
5  不要用windows自己的格式化程序，因为格完后U盘会变慢,重新格式化后可恢复。 
6  推荐用www.sdcard.org上面download中的"SD卡专用格式化工具 SD Formatter V2.0" 来格式化FAT。
7  修改菜单皮肤 可以复制256色的bmp文件到DSYSTEM中，c_file.bmp=上屏 desktop.bmp=下屏 wait.bmp=等待图 ,这些文件可以直接用moonshell的。
8  日文、繁体中文字库支持 把moonshell的system.fon system.l2u system.ank复制到DSYSTEM下即可。
9  建议用户使用前做一次完全检测(开机按住L+R+START+SELECT+UP)，完全检测速度比较缓慢，请耐心等待。
