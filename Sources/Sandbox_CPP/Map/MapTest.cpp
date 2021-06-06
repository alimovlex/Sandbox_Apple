/*
    MapTest.cpp
    The module represents my demo functions regarding map data structures and its methods.

    Sandbox

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/

#include "MapTest.hpp"

MapWrapper::MapWrapper() {

}

MapWrapper::~MapWrapper() {

}

//    begin() – Returns an iterator pointing to the first element of the list
//    end() – Returns an iterator pointing to the theoretical last element which follows the last element

bool MapWrapper::empty() {
    return stdMap.empty();
}

//    insert() – Inserts new elements in the list before the element at a specified position
//    erase() – Removes a single element or a range of elements from the list
//    assign() – Assigns new elements to list by replacing current elements and resizes the list
//    remove() – Removes all the elements from the list, which are equal to given element

long MapWrapper::size() {
    return stdMap.size();
}

MapIterator* MapWrapper::begin() {
    return new MapIterator(stdMap.begin(), &stdMap);
}

MapIterator* MapWrapper::end() {
    return new MapIterator(stdMap.end(), &stdMap);
}

MapIterator::MapIterator(map<void*, void*>::const_iterator i, map<void*, void*> *map) {
    iterator = i;
    mapP = map;
}

MapIterator::~MapIterator() {

}

bool MapIterator::increment() {
    iterator++;
    return (iterator != mapP->end());
}

bool MapIterator::decrement() {
    iterator--;
    return (iterator != mapP->begin());
}