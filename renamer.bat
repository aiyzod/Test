@echo off
setlocal enableextensions enabledelayedexpansion

set /p fname=File name:
set /p sep=Separator:
set /p ftype=File type:
set /a index=0

for %%a in (*.%ftype%) do (
	ren %%a %fname%%sep%!index!.%ftype%
	set /a index+=1
)

pause