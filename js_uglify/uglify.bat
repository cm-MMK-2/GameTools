@echo off
SET JSFOLDER=%cd%
echo finding js files...
chdir /d %JSFOLDER%
for /r . %%a in (*.js) do (
    @echo compressing %%~a ...
    uglifyjs %%~fa  -m -o %%~fa
)
echo finished!
pause & exit