/*
    DeQueueTest.cpp
    The module represents my demo functions regarding list data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "DequeTest.hpp"

DequeWrapper::DequeWrapper() {

}

DequeWrapper::~DequeWrapper() {

}

void* DequeWrapper::front() {
    return stdDeque.front();
}

void* DequeWrapper::back() {
    return stdDeque.back();
}

void DequeWrapper::push_front(const void* g) {
    stdDeque.push_front((void*)g);
}

void DequeWrapper::push_back(const void* g) {
    stdDeque.push_back((void*)g);
}

void DequeWrapper::pop_front() {
    stdDeque.pop_front();
}

void DequeWrapper::pop_back() {
    stdDeque.pop_back();
}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool DequeWrapper::empty() {
    return stdDeque.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long DequeWrapper::size() {
    return stdDeque.size();
}

DequeIterator* DequeWrapper::begin() {
    return new DequeIterator(stdDeque.begin(), &stdDeque);
}

DequeIterator* DequeWrapper::end() {
    return new DequeIterator(stdDeque.end(), &stdDeque);
}

DequeIterator::DequeIterator(deque<void*>::const_iterator i, deque<void*> *deque) {
    iterator = i;
    dequeP = deque;
}


DequeIterator::~DequeIterator() {

}

void* DequeIterator::value() {
    if (iterator != dequeP->end()) {
        return *iterator;
    }
    else {
        return NULL;
    }
}

bool DequeIterator::increment() {
    iterator++;
    return (iterator != dequeP->end());
}

bool DequeIterator::decrement() {
    iterator--;
    return (iterator != dequeP->begin());
}