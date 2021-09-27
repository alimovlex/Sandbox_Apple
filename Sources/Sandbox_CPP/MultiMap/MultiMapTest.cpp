/*
    MultiMapTest.cpp
    The module represents my demo functions regarding multimap data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "MultiMapTest.hpp"

MultiMapWrapper::MultiMapWrapper() {

}

MultiMapWrapper::~MultiMapWrapper() {

}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool MultiMapWrapper::empty() {
    return stdMultiMap.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long MultiMapWrapper::size() {
    return stdMultiMap.size();
}

MultiMapIterator* MultiMapWrapper::begin() {
    return new MultiMapIterator(stdMultiMap.begin(), &stdMultiMap);
}

MultiMapIterator* MultiMapWrapper::end() {
    return new MultiMapIterator(stdMultiMap.end(), &stdMultiMap);
}

MultiMapIterator::MultiMapIterator(multimap<void*, void*>::const_iterator i, multimap<void*, void*> *multimap) {
    iterator = i;
    multimapP = multimap;
}

MultiMapIterator::~MultiMapIterator() {

}

bool MultiMapIterator::increment() {
    iterator++;
    return (iterator != multimapP->end());
}

bool MultiMapIterator::decrement() {
    iterator--;
    return (iterator != multimapP->begin());
}