/*
    MultiSetTest.cpp
    The module represents my demo functions regarding multiset data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "MultiSetTest.hpp"

MultiSetWrapper::MultiSetWrapper() {

}

MultiSetWrapper::~MultiSetWrapper() {

}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool MultiSetWrapper::empty() {
    return stdMultiset.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long MultiSetWrapper::size() {
    return stdMultiset.size();
}

MultiSetIterator* MultiSetWrapper::begin() {
    return new MultiSetIterator(stdMultiset.begin(), &stdMultiset);
}

MultiSetIterator* MultiSetWrapper::end() {
    return new MultiSetIterator(stdMultiset.end(), &stdMultiset);
}

MultiSetIterator::MultiSetIterator(multiset<void*>::const_iterator i, multiset<void*> *multiset) {
    iterator = i;
    multisetP = multiset;
}

MultiSetIterator::~MultiSetIterator() {

}

void* MultiSetIterator::value() {
    if (iterator != multisetP->end()) {
        return *iterator;
    }
    else {
        return NULL;
    }
}

bool MultiSetIterator::increment() {
    iterator++;
    return (iterator != multisetP->end());
}

bool MultiSetIterator::decrement() {
    iterator--;
    return (iterator != multisetP->begin());
}