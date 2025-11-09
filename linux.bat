@echo off
title Linux

:menu
echo " ___       ___  ________   ___  ___     ___    ___ ";
echo "|\  \     |\  \|\   ___  \|\  \|\  \   |\  \  /  /|";
echo "\ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \  \/  / /";
echo " \ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \    / / ";
echo "  \ \  \____\ \  \ \  \\ \  \ \  \\\  \  /     \/  ";
echo "   \ \_______\ \__\ \__\\ \__\ \_______\/  /\   \  ";
echo "    \|_______|\|__|\|__| \|__|\|_______/__/ /\ __\ ";
echo "                                       |__|/ \|__| ";
echo 1) Run Linux
echo 2) Install Linux
echo 3) Exit

set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto start1
if %wybieram:%==2 goto install
if %wybieram:%==run goto start1
if %wybieram:%==install goto install
if %wybieram:%==3 goto exit
if %wybieram:%==exit goto exit

:start1
cls
echo " ___       ___  ________   ___  ___     ___    ___ ";
echo "|\  \     |\  \|\   ___  \|\  \|\  \   |\  \  /  /|";
echo "\ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \  \/  / /";
echo " \ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \    / / ";
echo "  \ \  \____\ \  \ \  \\ \  \ \  \\\  \  /     \/  ";
echo "   \ \_______\ \__\ \__\\ \__\ \_______\/  /\   \  ";
echo "    \|_______|\|__|\|__| \|__|\|_______/__/ /\ __\ ";
echo "                                       |__|/ \|__| ";
wsl
cls
goto menu

:install
cls
wsl -l -o
set /p odpowiedz:=What distro you want? e.g. ubuntu:
wsl --install %odpowiedz%
cls
goto menu

:exit
set /p exit1:=Are you sure? (Y/N)
if %exit1:%==Y exit
if %exit1:%==y exit
if %exit1:%==t exit
if %exit1:%==T exit
if %exit1:%==N goto menu
if %exit1:%==n goto menu
