for %%a in ("..\input\*.*") do ..\ffmpeg.exe -i "%%a" -c:a copy -c:v copy "..\output\%%~na.avi"
pause