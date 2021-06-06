//
//  MultiSetTest.hpp
//  MultiSetTest
//
//  Created by alimovlex
//  Copyright © 2020 alimovlex. All rights reserved.
//

#ifndef MultiSetTest_hpp
#define MultiSetTest_hpp

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

class MultiSetIterator {
public:
    MultiSetIterator(multiset<void*>::const_iterator i, multiset<void*> *multiset);
    ~MultiSetIterator();

    void* value();              // – Returns current value
    bool increment();           // – Increment iterator - return false if over end and do not increment
    bool decrement();           // – Decrement iterator - return false if before begin and do not increment

private:
    multiset<void*>::const_iterator iterator;
    multiset<void*> *multisetP;
};


class MultiSetWrapper {
public:
    MultiSetWrapper();
    ~MultiSetWrapper();

    MultiSetIterator* begin();   // – Returns an iterator pointing to the first element of the list
    MultiSetIterator* end();     // – Returns an iterator pointing to the theoretical last element which follows the last element
    bool empty();               // – Returns whether the list is empty(1) or not(0)
//    void insert(iterator, void* g) – Insert a new element in the list before the element at a specified position
//    void erase(iterator) – Remove a single element from the list
    long size();                 // – Returns the number of elements in the list

private:
    multiset<void*> stdMultiset;
};


#endif /* MultiSetTest_hpp */

