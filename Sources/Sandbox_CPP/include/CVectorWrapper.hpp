#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeVectorWrapper();
    long vector_size(const void *object);
    long vector_max_size(const void *object);
    long vector_capacity(const void *object);
    bool vector_empty(const void *object);
    void* vector_front(const void *object);
    void* vector_back(const void *object);
    void vector_push_back(const void *object, const void* g);
    void vector_pop_back(const void *object);
    void* vector_begin(const void *object);
    void* vector_end(const void *object);
    void* vector_value(const void *object);
    bool vector_increment(const void *object);
    bool vector_decrement(const void *object);
    void vector_clear(const void *object);
    void vector_emplace_back(const void *object, const void* g);
    void* vector_cbegin(const void *object);
    void* vector_cend(const void *object);
    void* vector_data(const void *object);


//void vector_erase(const void *object);
#ifdef __cplusplus
}
#endif
