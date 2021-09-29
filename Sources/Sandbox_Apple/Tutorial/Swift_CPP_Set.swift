import Foundation
import Sandbox_CPP

open class SwiftSetIterator {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(cppObject: UnsafeMutableRawPointer, dataSize: Int) {
        self.cppObject = cppObject
        self.dataSize = dataSize
    }

    // – Returns current value
    func value() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.set_value(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> Bool {
        return Sandbox_CPP.set_increment(cppObject)
    }

    // – Decrement iterator - return false if before begin and do not increment
    func decrement() -> Bool {
        return Sandbox_CPP.set_decrement(cppObject)
    }
}

open class SwiftSetWrapper {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(dataSize: Int) {
        self.cppObject = UnsafeMutableRawPointer(mutating: Sandbox_CPP.initializeSetWrapper())
        self.dataSize = dataSize
    }

    // – Returns an iterator pointing to the first element of the list
    func begin() -> SwiftSetIterator {
        return SwiftSetIterator(cppObject: Sandbox_CPP.set_begin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func end() -> SwiftSetIterator {
        return SwiftSetIterator(cppObject: Sandbox_CPP.set_end(cppObject), dataSize: dataSize)
    }

    // – Returns whether the list is empty(1) or not(0)
    func empty() -> Bool {
        return Sandbox_CPP.set_empty(cppObject)
    }

    // – Returns the number of elements in the list
    func size() -> Int {
        return Sandbox_CPP.set_size(cppObject)
    }
}