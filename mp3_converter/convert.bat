@echo off
:: ����ѹ�������ļ��ĸ�Ŀ¼���ű����Զ�������β��Һ�ѹ�����е������ļ�
SET FOLDER=%cd%
echo ���ڲ���wav�ļ�
chdir /d %FOLDER%
for /r . %%a in (*.wav) do (
    @echo ����ת�� %%~a ...
    lame -V3 %%~fa %%~pa%%~na.mp3
)
echo ���!
pause & exit