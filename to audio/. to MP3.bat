for %%a in ("..\input\*.*") do ..\ffmpeg.exe -i "%%a" -vn "..\output\%%~na.mp3"
pause