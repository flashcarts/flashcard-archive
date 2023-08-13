各アダプタに対応したファームウェアリセットを掛けるNDSファイルを入れると、システムメニューからファームウェアに戻れるようになります。

MoonShellの頃のような複雑な機構はやめました。MSE構造体をVRAMに保持しません。
'アダプタ名.nds'というファイル名のNDSファイルを起動するだけです。アダプタ名はDLDIの識別IDを指定してください。

例：
SCDS.nds => SuperCard DS One用
CEVO.nds => CycloDS用
DLMS.nds => DSLink用
R4TF.nds => R4用
