@echo off
:: ����ѹ�������ļ��ĸ�Ŀ¼���ű����Զ�������β��Һ�ѹ�����е������ļ�
SET FOLDER=%cd%
echo ���ڲ���mp3�ļ�
chdir /d %FOLDER%
for /r . %%a in (*.mp3) do (
    @echo ����ת�� %%~a ...
    lame --scale 4 %%~fa %%~pa%%~na_compressed.mp3
)
echo ���!
pause & exit