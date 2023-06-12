@echo off
cls

title mp4 to mp3 converter by anothermeer
echo enter ffmpeg tool location (Full Path)
set /p ffmpegLOCATION="> "
cd /d %ffmpegLOCATION%

:restart
echo.
echo enter mp4 file (Full Path)
set /p mp4="> "

echo.
echo enter mp3 location (Full Path)
set /p mp3="> "

echo.
echo starting convert..
timeout /t 01 /NOBREAK > NUL

ffmpeg -i %mp4% -vn %mp3%
cls
echo convert complete.
echo.

pause
cls
goto restart