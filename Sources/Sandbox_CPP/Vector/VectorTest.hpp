//
//  ListTest.hpp
//  ListTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef STLTest_hpp
#define STLTest_hpp

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

class VectorIterator {
public:
    VectorIterator(vector<void*>::const_iterator i, vector<void*> *vector);
    ~VectorIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    vector<void*>::const_iterator iterator;
    vector<void*> *vectorP;
};


class VectorWrapper {
public:
    VectorWrapper();
    ~VectorWrapper();

    void* front();              // – Returns reference to the first element in the list
    void* back();               // – Returns reference to the last element in the list
    void push_back(const void* g);    // – Adds a new element ‘g’ at the end of the list
    void pop_back();            // – Removes the last element of the list, and reduces size of the list by 1
    VectorIterator* begin();   // – Returns an iterator pointing to the first element of the list
    VectorIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list
    long size();                 // – Returns the number of elements in the list

private:
    vector<void*> stdVector;
};


#endif /* ListTest_hpp */

