@echo off
:: ����ת���ļ��ĸ�Ŀ¼���ű����Զ�������β��Һ�ѹ�����е�jpg png
:: ע��·���в����пո�
:: ������Ҫת����ͼƬ·��
SET /p FOLDER= ����·����
cd %FOLDER%
echo ���ڲ����ļ�
for /R %%i in (*.png, *.jpg) do ( 
  @echo ����ѹ�� %%i
  REM @echo ��׺��=%%~xi 
  REM @echo ����·��ȥ����׺��=%%~dnpi
  cwebp %%i -o %%~dnpi.webp
) 
echo finish!
pause & exit