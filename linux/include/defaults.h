#ifdef __cplusplus
extern "C" {
#endif
typedef unsigned int FD;
typedef long unsigned int size_t;

extern int write(FD, const char *, size_t);
extern int read(FD, const char *, size_t);
#ifdef __cplusplus
}
#endif