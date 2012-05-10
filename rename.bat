@echo off

for %%i in (OPS$BOZ_J.*) do (set fname=%%i) & call :rename
goto :eof
:rename
::Cuts off 1st 4 characters of fname, then appends prefix
ren %fname% %fname:~10%
goto :eof