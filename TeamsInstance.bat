@echo off

:: Uses the file name as the profile name.
set MSTEAMSPROFILE=%~n0
echo --- Using profile "%MSTEAMSPROFILE%"

:: Change USERPROFILE environment variable.
set "CURRENTUSERPROFILE=%USERPROFILE%"
set "USERPROFILE=%CURRENTUSERPROFILE%\TeamsProfiles\%MSTEAMSPROFILE%"

:: Ensure there is a Downloads folder.
mkdir "%USERPROFILE%\Downloads"

:: Start the new instance of Teams.
echo --- Launching MS Teams with profile %MSTEAMSPROFILE%
cd "%CURRENTUSERPROFILE%\AppData\Local\Microsoft\Teams"
"%CURRENTUSERPROFILE%\AppData\Local\Microsoft\Teams\Update.exe" --processStart "Teams.exe"
