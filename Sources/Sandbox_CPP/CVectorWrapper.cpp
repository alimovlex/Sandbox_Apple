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
//ADDED NEW
void vector_clear(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->clear();
}

void vector_emplace_back(const void *object, const void* g) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->emplace_back(g);
}

void* vector_cbegin(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return (void*) vector->cbegin();
}

void* vector_cend(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return (void*) vector->cend();
}

void* vector_data(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->data();
}

long vector_max_size(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->max_size();
}

long vector_capacity(const void *object) {
    VectorWrapper *vector = (VectorWrapper *)object;
    return vector->capacity();
}


