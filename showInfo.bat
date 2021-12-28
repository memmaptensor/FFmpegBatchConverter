for %%a in ("input\*.*") do ffprobe.exe -v error -show_format -show_streams "%%a"
pause