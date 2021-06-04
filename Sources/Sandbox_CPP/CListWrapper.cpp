#include "include/CListWrapper.hpp"

#include "List/ListTest.hpp"

const void * initializeListWrapper() {
    ListWrapper *list = new ListWrapper();
    return (void *)list;
}

long list_size(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return list->size();
}

bool list_empty(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return list->empty();
}

void* list_front(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return list->front();
}

void* list_back(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return list->back();
}

void list_push_front(const void *object, const void* g) {
    ListWrapper *list = (ListWrapper *)object;
    return list->push_front(g);
}

void list_push_back(const void *object, const void* g) {
    ListWrapper *list = (ListWrapper *)object;
    return list->push_back(g);
}

void list_pop_front(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    list->pop_front();
}

void list_pop_back(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    list->pop_back();
}

void* list_begin(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return (void*) list->begin();
}

void* list_end(const void *object) {
    ListWrapper *list = (ListWrapper *)object;
    return (void*) list->end();
}

void* list_value(const void *object) {
    ListIterator *iterator = (ListIterator *)object;
    return iterator->value();
}

bool list_increment(const void *object) {
    ListIterator *iterator = (ListIterator *)object;
    return iterator->increment();
}

bool list_decrement(const void *object) {
    ListIterator *iterator = (ListIterator *)object;
    return iterator->decrement();
}


