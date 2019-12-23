@echo off
cls
::REM This utility is developed by Chandrakant K for personal use only.
::REM Any change in the utility source may harm your computer.
::REM Date: 11-July-2018
COLOR 75
echo   ##----------------------------------------------------##
echo                                     Pro-Files-Creater_v1.0
echo   This Utility will create the list of files on your computer.
echo   You may find your desired files in the \Out directory.
echo   ..............................Developed by Chandrakant K.
echo   ##----------------------------------------------------##
echo. 
echo   Create HTML and JSON files from the list in FilesList.txt?
echo. 
pause

IF NOT EXIST %cd%\Out\json mkdir %cd%\Out\json
IF NOT EXIST %cd%\Out\html mkdir %cd%\Out\html

IF EXIST FilesList.txt (
	COLOR 72
	ECHO %cd%\FilesList.txt is existing
	SETLOCAL ENABLEDELAYEDEXPANSION
	for /f %%d in (%cd%\FilesList.txt) do (
		copy %cd%\struct\struct.html  %cd%\Out\html\%%d.html /Y
		copy %cd%\struct\struct.json  %cd%\Out\json\%%d.json /Y
	)
	
) ELSE (
  COLOR 74
  ECHO %cd%\FilesList.txt is NOT existing.
)

 ECHO Task Completed.
 ECHO.
 ECHO Pressing any key will close this window.
 
pause