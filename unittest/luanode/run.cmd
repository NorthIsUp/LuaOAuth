@echo off

for %%f in (tests\*.lua) do (
	echo %%f
	call luanode run.lua %%f
	if errorlevel 1 goto :eof
	if not errorlevel -1 goto :eof
)

echo Ended without errors
