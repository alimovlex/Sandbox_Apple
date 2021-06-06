//
// Created by robot on 6/5/21.
//

import Foundation

func cppListTest () {
    let list = SwiftListWrapper(dataSize: 1);
    list.push_back(value: "1".data(using: .utf8)!);
    list.push_back(value: "2".data(using: .utf8)!);
    list.push_back(value: "3".data(using: .utf8)!);
    print("The size of C++ List \(list.size())");

    let vector = SwiftVectorWrapper(dataSize: 1);
    vector.push_back(value: "1".data(using: .utf8)!);
    vector.push_back(value: "2".data(using: .utf8)!);
    vector.push_back(value: "3".data(using: .utf8)!);
    print("The size of C++ Vector \(vector.size())");

    let deque = SwiftDequeWrapper(dataSize: 1);
    deque.push_back(value: "1".data(using: .utf8)!);
    deque.push_back(value: "2".data(using: .utf8)!);
    deque.push_back(value: "3".data(using: .utf8)!);
    print("The size of C++ Deque \(deque.size())");

    let map = SwiftMapWrapper(dataSize: 1);
    print("The size of C++ Map \(map.size())");

    let multimap = SwiftMultiMapWrapper(dataSize: 1);
    print("The size of C++ MultiMap \(multimap.size())");

    let forward_list = SwiftForwardListWrapper(dataSize: 1);
    print("The C++ ForwardList is empty? The answer is :\(forward_list.empty())");

    let set = SwiftSetWrapper(dataSize: 1);
    print("The C++ Set is empty? The answer is :\(set.empty())");

    let multiset = SwiftMultiSetWrapper(dataSize: 1);
    print("The C++ MultiSet is empty? The answer is :\(multiset.empty())");


}

