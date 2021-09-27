//
//  MapTest.hpp
//  MapTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef MapTest_hpp
#define MapTest_hpp

#include <ctime>
#include <cmath>
#include <fstream>
#include <cstdlib>
#include <cstdio>
#include <iostream>
#include <string>
#include <vector>
#include <cstring>
#include <ctime>
#include <exception>
#include <algorithm>
#include <array>
#include <functional>
#include <numeric>
#include <chrono>
#include <iomanip>
#include <utility>
#include <list>
#include <forward_list>
#include <deque>
#include <queue>
#include <stack>
#include <set>
#include <map>
#include <valarray>
using namespace std;

class MapIterator {
public:
    MapIterator(map<void*, void*>::const_iterator i, map<void*, void*> *map);
    ~MapIterator();
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    map<void*, void*>::const_iterator iterator;
    map<void*, void*> *mapP;
};


class MapWrapper {
public:
    MapWrapper();
    ~MapWrapper();

    MapIterator* begin();   // – Returns an iterator pointing to the first element of the list
    MapIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list
    long size();                 // – Returns the number of elements in the list

private:
    map<void*, void*> stdMap;
};


#endif /* MapTest_hpp */

