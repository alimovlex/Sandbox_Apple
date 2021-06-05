#include "include/CDequeWrapper.hpp"

#include "Deque/DequeTest.hpp"

const void * initializeDequeWrapper() {
    DequeWrapper *deque = new DequeWrapper;
    return (void *)deque;
}

long deque_size(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->size();
}

bool deque_empty(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->empty();
}

void* deque_front(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->front();
}

void* deque_back(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->back();
}

void deque_push_front(const void *object, const void* g) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->push_front(g);
}

void deque_push_back(const void *object, const void* g) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return deque->push_back(g);
}

void deque_pop_front(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    deque->pop_front();
}

void deque_pop_back(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    deque->pop_back();
}

void* deque_begin(const void *object) {
    DequeWrapper *deque = (DequeWrapper *)object;
    return (void*) deque->begin();
}

void* deque_end(const void *object) {
    DequeWrapper *list = (DequeWrapper *)object;
    return (void*) list->end();
}

void* deque_value(const void *object) {
    DequeIterator *iterator = (DequeIterator *)object;
    return iterator->value();
}

bool deque_increment(const void *object) {
    DequeIterator *iterator = (DequeIterator *)object;
    return iterator->increment();
}

bool deque_decrement(const void *object) {
    DequeIterator *iterator = (DequeIterator *)object;
    return iterator->decrement();
}


