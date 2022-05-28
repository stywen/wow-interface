@echo off
xcopy /y /s  C:\"Program Files (x86)"\"World of Warcraft"\_retail_\Interface C:\Users\user00\Documents\GitHub\wow-interface\Interface
echo type "commit" or "update"
cd "C:\Users\user00\Documents\GitHub\wow-interface"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "origin"

:P
set ACTION=
set /P ACTION=Action: %=%
if "%ACTION%"=="c" (
  %GIT_PATH% add -A
	%GIT_PATH% commit -am "Auto-committed on %date%"
	%GIT_PATH% pull %BRANCH%
	%GIT_PATH% push %BRANCH%
)
if "%ACTION%"=="exit" exit /b

