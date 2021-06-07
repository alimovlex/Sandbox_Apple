//
//  VectorTest.hpp
//  VectorTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef VectorTest_hpp
#define VectorTest_hpp

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
    VectorIterator(vector<void*>::reverse_iterator i, vector<void*> *vector);
    ~VectorIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    vector<void*>::const_iterator iterator;
    vector<void*>::reverse_iterator riterator;
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
    void clear();
    void emplace_back(const void* g);
    //void erase(VectorIterator); //– Remove a single element from the list
    //void emplace();
    //void swap(void*);
    //void* at(VectorIterator);
    VectorIterator* begin();   // – Returns an iterator pointing to the first element of the list
    VectorIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    //VectorIterator* rbegin();
    //VectorIterator* rend();
    VectorIterator* cbegin();
    VectorIterator* cend();
    //VectorIterator* crbegin();
    //VectorIterator* crend();
    void* data();
    bool empty();               // – Returns whether the list is empty(1) or not(0)
    //void insert(VectorIterator, void* g); //– Insert a new element in the list before the element at a specified position

    long size();                 // – Returns the number of elements in the list
    //long resize(const void* g);
    long max_size();
    long capacity();

private:
    vector<void*> stdVector;


};


#endif /* VectorTest_hpp */

