@echo off

set curdir=%~dp0

:: 배포할 버전정보 받기
set /p deployVersion=배포할 버전을 입력하세요:

echo %deployVersion% 버전 푸쉬시작
docker push knw1234/dns-over-https:latest
docker tag knw1234/dns-over-https:latest knw1234/dns-over-https:%deployVersion%
docker push knw1234/dns-over-https:%deployVersion%

echo 푸쉬 완료
pause