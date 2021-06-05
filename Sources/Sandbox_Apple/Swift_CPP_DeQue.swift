import Foundation
import Sandbox_CPP

open class SwiftDequeIterator {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(cppObject: UnsafeMutableRawPointer, dataSize: Int) {
        self.cppObject = cppObject
        self.dataSize = dataSize
    }

    // – Returns current value
    func value() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.deque_value(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> Bool {
        return Sandbox_CPP.deque_increment(cppObject)
    }

    // – Decrement iterator - return false if before begin and do not increment
    func decrement() -> Bool {
        return Sandbox_CPP.deque_decrement(cppObject)
    }
}

open class SwiftDequeWrapper {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(dataSize: Int) {
        self.cppObject = UnsafeMutableRawPointer(mutating: Sandbox_CPP.initializeDequeWrapper())
        self.dataSize = dataSize
    }

    // – Returns reference to the first element in the list
    func front() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.deque_front(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Returns reference to the last element in the list
    func back() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.deque_back(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Adds a new element ‘value’ at the end of the list
    func push_back(value: Data) {
        value.withUnsafeBytes {
            Sandbox_CPP.deque_push_back(cppObject, $0)
        }
    }

    // – Removes the last element of the list, and reduces size of the list by 1
    func pop_back() {
        Sandbox_CPP.deque_pop_back(cppObject)
    }

    // – Returns an iterator pointing to the first element of the list
    func begin() -> SwiftListIterator {
        return SwiftListIterator(cppObject: Sandbox_CPP.deque_begin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func end() -> SwiftListIterator {
        return SwiftListIterator(cppObject: Sandbox_CPP.deque_end(cppObject), dataSize: dataSize)
    }

    // – Returns whether the list is empty(1) or not(0)
    func empty() -> Bool {
        return Sandbox_CPP.deque_empty(cppObject)
    }

    // – Returns the number of elements in the list
    func size() -> Int {
        return Sandbox_CPP.deque_size(cppObject)
    }
}