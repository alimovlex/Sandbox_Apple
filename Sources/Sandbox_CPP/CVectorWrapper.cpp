#include "include/CVectorWrapper.hpp"

#include "Vector/VectorTest.hpp"

const void * initializeVectorWrapper() {
    VectorWrapper *vector = new VectorWrapper();
    return (void *)vector;
}

long vector_size(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->size();
}

bool vector_empty(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->empty();
}

void* vector_front(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->front();
}

void* vector_back(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->back();
}

void vector_push_back(const void *object, const void* g) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->push_back(g);
}

void vector_pop_back(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    vector->pop_back();
}

void* vector_begin(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return (void*) vector->begin();
}

void* vector_end(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return (void*) vector->end();
}

void* vector_value(const void *object) {
    VectorIterator *iterator = (VectorIterator *)object;
    return iterator->value();
}

bool vector_increment(const void *object) {
    VectorIterator *iterator = (VectorIterator *)object;
    return iterator->increment();
}

bool vector_decrement(const void *object) {
    VectorIterator *iterator = (VectorIterator *)object;
    return iterator->decrement();
}


