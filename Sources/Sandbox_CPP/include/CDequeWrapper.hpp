#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeDequeWrapper();
    long deque_size(const void *object);
    bool deque_empty(const void *object);
    void* deque_front(const void *object);
    void* deque_back(const void *object);
    void deque_push_front(const void *object, const void* g);
    void deque_push_back(const void *object, const void* g);
    void deque_pop_front(const void *object);
    void deque_pop_back(const void *object);
    void* deque_begin(const void *object);
    void* deque_end(const void *object);
    void* deque_value(const void *object);
    bool deque_increment(const void *object);
    bool deque_decrement(const void *object);

#ifdef __cplusplus
}
#endif
