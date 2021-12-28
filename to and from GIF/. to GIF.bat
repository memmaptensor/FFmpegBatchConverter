SETLOCAL EnableDelayedExpansion
for %%a in ("..\input\*.*") do (
	SET /P convertwholeclip="Convert whole clip? (y/n): "
	if !convertwholeclip!==n (
		SET /P startsec="Start second: "
		SET /P seeksec="Seek for (in seconds): "
		..\ffmpeg.exe -ss "!startsec!" -t "!seeksec!" -i "%%a" -filter_complex "[0:v] palettegen" "..\output\%%~na_palette.png"
		..\ffmpeg.exe -ss "!startsec!" -t "!seeksec!" -i "%%a" -i "..\output\%%~na_palette.png" -filter_complex "[0:v][1:v] paletteuse" "..\output\%%~na.gif"
		del "..\output\%%~na_palette.png"
	)
	if !convertwholeclip!==y ( 
		..\ffmpeg.exe -i "%%a" -filter_complex "[0:v] palettegen" "..\output\%%~na_palette.png"
		..\ffmpeg.exe -i "%%a" -i "..\output\%%~na_palette.png" -filter_complex "[0:v][1:v] paletteuse" "..\output\%%~na.gif"
		del "..\output\%%~na_palette.png"
	)
)
pause