/*
    SetTest.cpp
    The module represents my demo functions regarding vector data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "SetTest.hpp"

SetWrapper::SetWrapper() {

}

SetWrapper::~SetWrapper() {

}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool SetWrapper::empty() {
    return stdSet.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long SetWrapper::size() {
    return stdSet.size();
}

SetIterator* SetWrapper::begin() {
    return new SetIterator(stdSet.begin(), &stdSet);
}

SetIterator* SetWrapper::end() {
    return new SetIterator(stdSet.end(), &stdSet);
}

SetIterator::SetIterator(set<void*>::const_iterator i, set<void*> *set) {
    iterator = i;
    setP = set;
}

SetIterator::~SetIterator() {

}

void* SetIterator::value() {
    if (iterator != setP->end()) {
        return *iterator;
    }
    else {
        return NULL;
    }
}

bool SetIterator::increment() {
    iterator++;
    return (iterator != setP->end());
}

bool SetIterator::decrement() {
    iterator--;
    return (iterator != setP->begin());
}