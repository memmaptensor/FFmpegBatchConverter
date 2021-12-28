for %%a in ("..\input\*.*") do ..\ffmpeg.exe -i "%%a" "..\output\%%~na.mp4"
pause