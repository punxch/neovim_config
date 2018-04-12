@echo off
set dest="%userprofile%/AppData/Local/nvim/"
call :treeProcess %dest%
goto :eof

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
copy "*.vim" %1
for /D %%d in (*) do (
    cd %%d
	mkdir "%userprofile%/AppData/Local/nvim/%%d/"
    call :treeProcess "%userprofile%/AppData/Local/nvim/%%d/"
    cd ..
)
exit /b