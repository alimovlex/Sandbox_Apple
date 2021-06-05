#include "include/CSetWrapper.hpp"

#include "Set/SetTest.hpp"

const void * initializeSetWrapper() {
    SetWrapper *list = new SetWrapper();
    return (void *)list;
}

long set_size(const void *object) {
    SetWrapper *list = (SetWrapper *)object;
    return list->size();
}

bool set_empty(const void *object) {
    SetWrapper *list = (SetWrapper *)object;
    return list->empty();
}

void* set_begin(const void *object) {
    SetWrapper *list = (SetWrapper *)object;
    return (void*) list->begin();
}

void* set_end(const void *object) {
    SetWrapper *list = (SetWrapper *)object;
    return (void*) list->end();
}

void* set_value(const void *object) {
    SetIterator *iterator = (SetIterator *)object;
    return iterator->value();
}

bool set_increment(const void *object) {
    SetIterator *iterator = (SetIterator *)object;
    return iterator->increment();
}

bool set_decrement(const void *object) {
    SetIterator *iterator = (SetIterator *)object;
    return iterator->decrement();
}


