#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeMultiMapWrapper();
    long multimap_size(const void *object);
    bool multimap_empty(const void *object);
    void* multimap_begin(const void *object);
    void* multimap_end(const void *object);
    bool multimap_increment(const void *object);
    bool multimap_decrement(const void *object);

#ifdef __cplusplus
}
#endif
