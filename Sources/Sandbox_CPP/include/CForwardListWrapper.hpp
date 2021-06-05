#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

    const void * initializeForwardListWrapper();
    bool forwardList_empty(const void *object);
    void* forwardList_front(const void *object);
    void* forwardList_begin(const void *object);
    void* forwardList_end(const void *object);
    void* forwardList_value(const void *object);
    bool forwardList_increment(const void *object);

#ifdef __cplusplus
}
#endif
