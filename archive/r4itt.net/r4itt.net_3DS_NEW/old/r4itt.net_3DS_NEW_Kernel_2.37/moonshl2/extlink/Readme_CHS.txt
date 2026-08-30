
你可以设置 MoonShell2 使用外部自制软件打开对应扩展名的文件。
如果你不使用此功能，请不要删除本文件夹。

NDS文件名本身成为定义信息。
例如，复制"ipk.nds"到本文件夹，如果打开IPK文件将会自动读取 "ipk.nds"。
内部支持和同扩展名（mp3.nds，jpg.nds等）设定同时存在的话 外部应用程序优先。

如果设置的是为编译成专为MoonShell2支持的文件，将只是打开对应的自制软件。
例如，将ReinMoon.nds改名为sav.nds拷贝到本文件夹，打开存档文件时只是单纯的启动ReinMoon.nds

很容易的创建兼容MoonShell2此功能的自制软件（我做到了尽可能的简单）
详情请参见"moonshl2_extlink_for_developer.txt"（未做成）
它还介绍了如何退出自制软件返回MoonShell2（这会稍复杂点）