[ ! -d "./bin" ] && mkdir ./bin

aarch64-linux-gnu-gcc -I../include -I./include -c main.c -o ./bin/main.obj

aarch64-linux-gnu-g++ -I../include -I./include -c src/cpp_test.cpp -o ./bin/test.obj

aarch64-linux-gnu-as ../src/defaults.asm -o ./bin/defaults.obj

cd bin

aarch64-linux-gnu-g++ main.obj defaults.obj test.obj -o main

chmod +x ./main

cd ..

qemu-aarch64 -L /usr/aarch64-linux-gnu ./bin/main