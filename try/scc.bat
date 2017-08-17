@echo off
set SDCC_HOME=e:\tools\pic\sdcc
set GPUTILS_HOME=e:\tools\pic\gputils-0.14.1
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-I"%GPUTILS_HOME%\lkr" -s 16f87.lkr

set SDCC_ARG=-V -S --verbose --use-non-free -mpic14 -p16f87 ^
-I"%SDCC_HOME%\device\include\pic14" ^
-I"%SDCC_HOME%\device\non-free\include\pic14" ^
-Wa"-I%GPUTILS_HOME%\header" ^
-Wl"-s%GPUTILS_HOME%\lkr\16f87.lkr"

@echo on

::note
sdcc %SDCC_ARG% %1



