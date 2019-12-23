@echo off
cls
::REM This utility is developed by Chandrakant K for personal use only.
::REM Any change in the utility source may harm your computer.
::REM Date: 11-July-2018

COLOR 75
echo   ##----------------------------------------------------##
echo                                     Pro-Files-Creater_v1.0
echo   This Utility will create the list of directories on your computer.
echo   You may find your desired directories under \Out directory.
echo   ..............................Developed by Chandrakant K.
echo   ##----------------------------------------------------##
echo. 
echo   Create list of folders from as specifiedin the FilesList.txt
echo. 
pause

IF NOT EXIST %cd%\Out\json mkdir %cd%\Out\json
IF NOT EXIST %cd%\Out\html mkdir %cd%\Out\html

IF EXIST FilesList.txt (
	COLOR 72
	ECHO %cd%\FilesList.txt is existing
	SETLOCAL ENABLEDELAYEDEXPANSION
	for /f %%d in (%cd%\FilesList.txt) do (
		IF NOT EXIST %cd%\Out\%%d mkdir %cd%\Out\%%d
	)
	
) ELSE (
  COLOR 74
  ECHO %cd%\FilesList.txt is NOT existing.
)

 ECHO Task Completed.
 ECHO.
 ECHO Pressing any key will close this window.
pause