@echo off

set curdir=%~dp0

:: ������ �������� �ޱ�
set /p deployVersion=������ ������ �Է��ϼ���:

echo %deployVersion% ���� Ǫ������
docker push knw1234/dns-over-https:latest
docker tag knw1234/dns-over-https:latest knw1234/dns-over-https:%deployVersion%
docker push knw1234/dns-over-https:%deployVersion%

echo Ǫ�� �Ϸ�
pause