#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeSetWrapper();
    long set_size(const void *object);
    bool set_empty(const void *object);
    void* set_begin(const void *object);
    void* set_end(const void *object);
    void* set_value(const void *object);
    bool set_increment(const void *object);
    bool set_decrement(const void *object);

#ifdef __cplusplus
}
#endif
