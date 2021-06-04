#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeListWrapper();
    long list_size(const void *object);
    bool list_empty(const void *object);
    void* list_front(const void *object);
    void* list_back(const void *object);
    void list_push_front(const void *object, const void* g);
    void list_push_back(const void *object, const void* g);
    void list_pop_front(const void *object);
    void list_pop_back(const void *object);
    void* list_begin(const void *object);
    void* list_end(const void *object);
    void* list_value(const void *object);
    bool list_increment(const void *object);
    bool list_decrement(const void *object);

#ifdef __cplusplus
}
#endif
