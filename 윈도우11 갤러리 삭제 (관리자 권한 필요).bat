@echo off
REM 레지스트리 키 삭제 및 설정 변경
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /f
reg add "HKCR\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f

REM 탐색기 재시작
taskkill /f /im explorer.exe
start explorer.exe
