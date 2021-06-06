#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeMultiSetWrapper();
    long multiset_size(const void *object);
    bool multiset_empty(const void *object);
    void* multiset_begin(const void *object);
    void* multiset_end(const void *object);
    void* multiset_value(const void *object);
    bool multiset_increment(const void *object);
    bool multiset_decrement(const void *object);

#ifdef __cplusplus
}
#endif
