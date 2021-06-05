#include "include/CForwardListWrapper.hpp"

#include "Forward_List/ForwardListTest.hpp"

const void * initializeForwardListWrapper() {
    ForwardListWrapper *forwardList = new ForwardListWrapper();
    return (void *)forwardList;
}

bool forwardList_empty(const void *object) {
    ForwardListWrapper *list = (ForwardListWrapper *)object;
    return list->empty();
}

void* forwardList_front(const void *object) {
    ForwardListWrapper *forwardList = (ForwardListWrapper *)object;
    return forwardList->front();
}

void* forwardList_begin(const void *object) {
    ForwardListWrapper *forwardList = (ForwardListWrapper *)object;
    return (void*) forwardList->begin();
}

void* forwardList_end(const void *object) {
    ForwardListWrapper *forwardList = (ForwardListWrapper *)object;
    return (void*) forwardList->end();
}

void* forwardList_value(const void *object) {
    ForwardListIterator *iterator = (ForwardListIterator *)object;
    return iterator->value();
}

bool forwardList_increment(const void *object) {
    ForwardListIterator *iterator = (ForwardListIterator *)object;
    return iterator->increment();
}


