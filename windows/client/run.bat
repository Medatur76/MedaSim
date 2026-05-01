@echo off

if not exist "bin" mkdir "bin"

gcc -c main.c -o ./bin/main.obj

cd bin

gcc main.obj -o program.exe -mwindows -lgdi32

"./program.exe"

cd ..