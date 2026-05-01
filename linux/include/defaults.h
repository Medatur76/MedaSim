typedef unsigned int FD;
typedef long unsigned int size_t;

extern int write(FD, char *, size_t);
extern int read(FD, char *, size_t);