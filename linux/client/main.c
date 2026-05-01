#include "defaults.h"
#include "test.h"

int main(void) {
    write(1, "C: Hello, World!\n", 17);
    init();
    return 0;
}