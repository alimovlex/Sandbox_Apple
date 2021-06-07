/*
    VectorTest.cpp
    The module represents my demo functions regarding vector data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "VectorTest.hpp"

VectorWrapper::VectorWrapper() {

}

VectorWrapper::~VectorWrapper() {

}

void* VectorWrapper::front() {
    return stdVector.front();
}

void* VectorWrapper::back() {
    return stdVector.back();
}

void VectorWrapper::push_back(const void* g) {
    stdVector.push_back((void*)g);
}

void VectorWrapper::pop_back() {
    stdVector.pop_back();
}

void VectorWrapper::emplace_back(const void *g) {
    return(stdVector.emplace_back((void*)g));
}

void VectorWrapper::clear() {
    return stdVector.clear();
}

void* VectorWrapper::data() {
    return stdVector.data();
}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool VectorWrapper::empty() {
    return stdVector.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long VectorWrapper::size() {
    return stdVector.size();
}

long VectorWrapper::max_size() {
    return stdVector.max_size();
}

long VectorWrapper::capacity() {
    return stdVector.capacity();
}

VectorIterator* VectorWrapper::begin() {
    return new VectorIterator(stdVector.begin(), &stdVector);
}

VectorIterator* VectorWrapper::cbegin() {
    return new VectorIterator(stdVector.cbegin(), &stdVector);
}


VectorIterator* VectorWrapper::end() {
    return new VectorIterator(stdVector.end(), &stdVector);
}

VectorIterator* VectorWrapper::cend() {
    return new VectorIterator(stdVector.cend(), &stdVector);
}

VectorIterator::VectorIterator(vector<void*>::const_iterator i, vector<void*> *vector) {
    iterator = i;
    vectorP = vector;
}

VectorIterator::~VectorIterator() {

}

void* VectorIterator::value() {
    if (iterator != vectorP->end()) {
        return *iterator;
    }
    else {
        return NULL;
    }
}

bool VectorIterator::increment() {
    iterator++;
    return (iterator != vectorP->end());
}

bool VectorIterator::decrement() {
    iterator--;
    return (iterator != vectorP->begin());
}



