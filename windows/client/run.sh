[ ! -d "./bin" ] && mkdir ./bin

x86_64-w64-mingw32-gcc -I./include -c main.c -o ./bin/main.obj -mwindows

cd bin

x86_64-w64-mingw32-gcc main.obj -o program.exe

cd ..

wine ./bin/program.exe