#include "include/CListWrapper_STL.hpp"

#include "CPPListWrapper/STLTest.hpp"

const void * initializeListWrapper() {
    STLWrapper *list = new STLWrapper();
    return (void *)list;
}

long size(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return list->size();
}

bool empty(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return list->empty();
}

void* front(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return list->front();
}

void* back(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return list->back();
}

void push_front(const void *object, const void* g) {
    STLWrapper *list = (STLWrapper *)object;
    return list->push_front(g);
}

void push_back(const void *object, const void* g) {
    STLWrapper *list = (STLWrapper *)object;
    return list->push_back(g);
}

void pop_front(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    list->pop_front();
}

void pop_back(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    list->pop_back();
}

void* begin(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return (void*) list->begin();
}

void* end(const void *object) {
    STLWrapper *list = (STLWrapper *)object;
    return (void*) list->end();
}

void* value(const void *object) {
    STLIterator *iterator = (STLIterator *)object;
    return iterator->value();
}

bool increment(const void *object) {
    STLIterator *iterator = (STLIterator *)object;
    return iterator->increment();
}

bool decrement(const void *object) {
    STLIterator *iterator = (STLIterator *)object;
    return iterator->decrement();
}


