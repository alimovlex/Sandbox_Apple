#include "include/CMultiSetWrapper.hpp"

#include "MultiSet/MultiSetTest.hpp"
#include "Vector/VectorTest.hpp"

const void * initializeMultiSetWrapper() {
    MultiSetWrapper *multiset = new MultiSetWrapper();
    return (void *)multiset;
}

long multiset_size(const void *object) {
    MultiSetWrapper *vector = (MultiSetWrapper *)object;
    return vector->size();
}

bool multiset_empty(const void *object) {
    MultiSetWrapper *vector = (MultiSetWrapper *)object;
    return vector->empty();
}

void* multiset_begin(const void *object) {
    MultiSetWrapper *vector = (MultiSetWrapper *)object;
    return (void*) vector->begin();
}

void* multiset_end(const void *object) {
    MultiSetWrapper *vector = (MultiSetWrapper *)object;
    return (void*) vector->end();
}

void* multiset_value(const void *object) {
    MultiSetIterator *iterator = (MultiSetIterator *)object;
    return iterator->value();
}

bool multiset_increment(const void *object) {
    MultiSetIterator *iterator = (MultiSetIterator *)object;
    return iterator->increment();
}

bool multiset_decrement(const void *object) {
    MultiSetIterator *iterator = (MultiSetIterator *)object;
    return iterator->decrement();
}


