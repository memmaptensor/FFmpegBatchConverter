for %%a in ("..\input\*.*") do ..\ffmpeg.exe -i "%%a" -vn "..\output\%%~na.flac"
pause