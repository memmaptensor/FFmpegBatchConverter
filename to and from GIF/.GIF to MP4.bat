for %%a in ("..\input\*.GIF") do ..\ffmpeg.exe -i "%%a" -filter_complex "[0:v] fps=24" -vsync 0 "..\output\%%~na.mp4"
pause