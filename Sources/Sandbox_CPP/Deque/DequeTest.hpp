//
//  DeQueueTest.hpp
//  DeQueueTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef DeQueueTest_hpp
#define DeQueueTest_hpp

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

class DequeIterator {
public:
    DequeIterator(deque<void*>::const_iterator i, deque<void*> *deque);
    ~DequeIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    deque<void*>::const_iterator iterator;
    deque<void*> *dequeP;
};


class DequeWrapper {
public:
    DequeWrapper();
    ~DequeWrapper();

    void* front();              // – Returns reference to the first element in the list
    void* back();               // – Returns reference to the last element in the list
    void push_front(const void* g);   // – Adds a new element ‘g’ at the beginning of the list
    void push_back(const void* g);    // – Adds a new element ‘g’ at the end of the list
    void pop_front();           // – Removes the first element of the list, and reduces size of the list by 1
    void pop_back();            // – Removes the last element of the list, and reduces size of the list by 1
    DequeIterator* begin();   // – Returns an iterator pointing to the first element of the list
    DequeIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list
    long size();                 // – Returns the number of elements in the list

private:
    deque<void*> stdDeque;
};


#endif /* DeQueueTest_hpp */

