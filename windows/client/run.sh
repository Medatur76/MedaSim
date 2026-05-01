[ ! -d "./bin" ] && mkdir ./bin

x86_64-w64-mingw32-gcc -I./include -c main.c -o ./bin/main.obj -mwindows -lgdi32

x86_64-w64-mingw32-g++ -I./include -c src/shaders.cpp -o ./bin/shaders.obj -mwindows -lgdi32

cd bin

x86_64-w64-mingw32-g++ main.obj shaders.obj -o program.exe

cd ..

wine ./bin/program.exe