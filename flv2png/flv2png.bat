@echo off
SET DIR=%cd%
echo finding flv files...
chdir /d %DIR%
for /r . %%a in (*.flv) do (
    @echo converting flv file: %%~a ...
    ffmpeg -i %%~fa -r 24 -vcodec png -pix_fmt rgb32 png/%%~na_%%0d.png
)
echo finished!
pause & exit

