/*
    ForwardListTest.cpp
    The module represents my demo functions regarding forward_list data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "ForwardListTest.hpp"

ForwardListWrapper::ForwardListWrapper() {

}

ForwardListWrapper::~ForwardListWrapper() {

}

void* ForwardListWrapper::front() {
    return stdForwardList.front();
}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool ForwardListWrapper::empty() {
    return stdForwardList.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

ForwardListIterator* ForwardListWrapper::begin() {
    return new ForwardListIterator(stdForwardList.begin(), &stdForwardList);
}

ForwardListIterator* ForwardListWrapper::end() {
    return new ForwardListIterator(stdForwardList.end(), &stdForwardList);
}

ForwardListIterator::ForwardListIterator(forward_list<void*>::const_iterator i, forward_list<void*> *forwardList) {
    iterator = i;
    forwardListP = forwardList;
}


ForwardListIterator::~ForwardListIterator() {

}

void* ForwardListIterator::value() {
    if (iterator != forwardListP->end()) {
        return *iterator;
    }
    else {
        return NULL;
    }
}

bool ForwardListIterator::increment() {
    iterator++;
    return (iterator != forwardListP->end());
}