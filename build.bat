@echo off
set FORMAT="c1541.exe" -format "disk,0" d81 "FARM.D81"
set WRITE="c1541.exe" -attach "FARM.D81" 8 -write

%FORMAT% && %WRITE% "./main.prg" 
%WRITE% "./assets/pal/pal.bin"
%WRITE% "./assets/images/nti.bin"
%WRITE% "./assets/maps/bigmap.bin"

