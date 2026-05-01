@echo off

if not exist "bin" mkdir "bin"

gcc -c main.c -o ./bin/main.obj

g++ -c src/shaders.cpp -o ./bin/shaders.obj

cd bin

g++ main.obj shaders.obj -o program.exe -mwindows -lgdi32

cd ..

"./program.exe"