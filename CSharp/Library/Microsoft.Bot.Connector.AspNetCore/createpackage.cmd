@echo off
setlocal
setlocal enabledelayedexpansion
setlocal enableextensions
set errorlevel=0
mkdir ..\nuget
erase /s ..\nuget\Microsoft.Bot.Connector.AspNetCore.1.*nupkg
msbuild /property:Configuration=release Microsoft.Bot.Connector.AspNetCore.csproj 
copy bin\release\*.nupkg ..\nuget