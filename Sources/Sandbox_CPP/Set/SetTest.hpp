//
//  SetTest.hpp
//  SetTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef SetTest_hpp
#define SetTest_hpp

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

class SetIterator {
public:
    SetIterator(set<void*>::const_iterator i, set<void*> *set);
    ~SetIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    set<void*>::const_iterator iterator;
    set<void*> *setP;
};


class SetWrapper {
public:
    SetWrapper();
    ~SetWrapper();
    SetIterator* begin();   // – Returns an iterator pointing to the first element of the list
    SetIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list
    long size();                 // – Returns the number of elements in the list

private:
    set<void*> stdSet;
};


#endif /* SetTest_hpp */

