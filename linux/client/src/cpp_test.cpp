#include "defaults.h"

extern "C" void init(void) {
    write(1, "C++: Hello, World!\n", 19);
}