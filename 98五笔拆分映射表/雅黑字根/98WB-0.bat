@echo off
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Fontlink\SystemLink" /v 98WB-0 /t REG_MULTI_SZ /d "MSYH.TTC,Microsoft YaHei UI,128,96"\0"MSYH.TTC,Microsoft YaHei UI"\0"MSYH.TTF,128,96"\0"MSYH.TTF"\0"SEGUISYM.TTF,Segoe UI Symbol"\0"SEGOEUI.TTF,Segoe UI,120,80"\0"SEGOEUI.TTF,Segoe UI"\0 /f
exit