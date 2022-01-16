@echo off
setlocal enabledelayedexpansion
Set configPath="config.ini"
(for /f "tokens=1* delims==" %%a in ('type "%configPath%"') do (
	if  "%%b"=="" (
		echo.%%a
	) else (
		if "%%a"=="channel" (
			if "%%b"=="1" (
				echo.%%a=14
			) else (
				echo.%%a=1
			)
		) else (
			if "%%a"=="cps" (
				if "%%b"=="bilibili" (
					echo.%%a=mihoyou
				) else (
					echo.%%a=bilibili
				)
			) else (
				echo.%%a=%%b
			)
		)
	)
))>$
move $ %configPath%

echo ---------current config.ini----------
for /f "usebackq tokens=* delims=" %%a in (%configPath%) do (
	echo %%a
)

pause & exit