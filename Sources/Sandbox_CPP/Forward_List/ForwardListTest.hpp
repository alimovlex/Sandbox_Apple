//
//  ForwardListTest.hpp
//  ForwardListTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef ForwardListTest_hpp
#define ForwardListTest_hpp

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

class ForwardListIterator {
public:
    ForwardListIterator(forward_list<void*>::const_iterator i, forward_list<void*> *forwardList);
    ~ForwardListIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment

private:
    forward_list<void*>::const_iterator iterator;
    forward_list<void*> *forwardListP;
};


class ForwardListWrapper {
public:
    ForwardListWrapper();
    ~ForwardListWrapper();

    void* front();              // – Returns reference to the first element in the list
    ForwardListIterator* begin();   // – Returns an iterator pointing to the first element of the list
    ForwardListIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list

private:
    forward_list<void*> stdForwardList;
};


#endif /* ForwardListTest_hpp */

