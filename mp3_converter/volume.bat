@echo off
:: 设置压缩音乐文件的根目录，脚本会自动按树层次查找和压缩所有的音乐文件
SET FOLDER=%cd%
echo 正在查找mp3文件
chdir /d %FOLDER%
for /r . %%a in (*.mp3) do (
    @echo 正在转换 %%~a ...
    lame --scale 4 %%~fa %%~pa%%~na_compressed.mp3
)
echo 完成!
pause & exit