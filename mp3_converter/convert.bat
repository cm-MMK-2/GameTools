@echo off
:: 设置压缩音乐文件的根目录，脚本会自动按树层次查找和压缩所有的音乐文件
SET FOLDER=%cd%
echo 正在查找wav文件
chdir /d %FOLDER%
for /r . %%a in (*.wav) do (
    @echo 正在转换 %%~a ...
    lame -V3 %%~fa %%~pa%%~na.mp3
)
echo 完成!
pause & exit