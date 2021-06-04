//
// Created by robot on 6/5/21.
//

import Foundation

func cppListTest () {
    let list = SwiftListWrapper(dataSize: 1)
    list.push_back(value: "1".data(using: .utf8)!)
    list.push_back(value: "2".data(using: .utf8)!)
    list.push_back(value: "3".data(using: .utf8)!)
    list.push_front(value: "0".data(using: .utf8)!)
    print("The size of C++ List \(list.size())");

    let vector = SwiftVectorWrapper(dataSize: 1)
    vector.push_back(value: "1".data(using: .utf8)!)
    vector.push_back(value: "2".data(using: .utf8)!)
    vector.push_back(value: "3".data(using: .utf8)!)
    print("The size of C++ Vector \(vector.size())");
}

