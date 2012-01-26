@echo off
:input
cls
set INPUT=
set TARGET=
echo Please choose from the following build options:
echo .
echo 1 = Build
echo 2 = Deploy
echo .
set /P INPUT=Please specify your option from above: %=%
if "%INPUT%"=="" goto input
if "%INPUT%"=="1" set TARGET="build"
if "%INPUT%"=="2" set TARGET="deploy"
if "%TARGET%"=="" goto input
echo .
echo .
echo .
build/build.bat %TARGET%
pause