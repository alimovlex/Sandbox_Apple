import Foundation
import Sandbox_CPP

open class SwiftMultiMapIterator {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(cppObject: UnsafeMutableRawPointer, dataSize: Int) {
        self.cppObject = cppObject
        self.dataSize = dataSize
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> Bool {
        return Sandbox_CPP.multimap_increment(cppObject)
    }

    // – Decrement iterator - return false if before begin and do not increment
    func decrement() -> Bool {
        return Sandbox_CPP.multimap_decrement(cppObject)
    }
}

open class SwiftMultiMapWrapper {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(dataSize: Int) {
        self.cppObject = UnsafeMutableRawPointer(mutating: Sandbox_CPP.initializeMultiMapWrapper())
        self.dataSize = dataSize
    }

    // – Returns an iterator pointing to the first element of the list
    func begin() -> SwiftMultiMapIterator {
        return SwiftMultiMapIterator(cppObject: Sandbox_CPP.multimap_begin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func end() -> SwiftMultiMapIterator {
        return SwiftMultiMapIterator(cppObject: Sandbox_CPP.multimap_end(cppObject), dataSize: dataSize)
    }

    // – Returns whether the list is empty(1) or not(0)
    func empty() -> Bool {
        return Sandbox_CPP.multimap_empty(cppObject)
    }

    // – Returns the number of elements in the list
    func size() -> Int {
        return Sandbox_CPP.multimap_size(cppObject)
    }
}