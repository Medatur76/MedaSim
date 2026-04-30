typedef unsigned int FD;
typedef long unsigned int size_t;

int write(FD, char *, size_t);

#define read(x,y,z) y = _read(x, z)
#define read(x,z) _read(x, z)