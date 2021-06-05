#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeMapWrapper();
    long map_size(const void *object);
    bool map_empty(const void *object);
    void* map_begin(const void *object);
    void* map_end(const void *object);
    bool map_increment(const void *object);
    bool map_decrement(const void *object);

#ifdef __cplusplus
}
#endif
