[ ! -d "./bin" ] && mkdir ./bin

aarch64-linux-gnu-gcc -I./include -c main.c -o ./bin/main.obj

aarch64-linux-gnu-as src/defaults.asm -o ./bin/defaults.obj

cd bin

aarch64-linux-gnu-gcc main.obj defaults.obj -o main

chmod +x ./main

cd ..

qemu-aarch64 -L /usr/aarch64-linux-gnu ./bin/main