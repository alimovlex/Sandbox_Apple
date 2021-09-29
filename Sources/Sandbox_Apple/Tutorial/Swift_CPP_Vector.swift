import Foundation
import Sandbox_CPP

open class SwiftVectorIterator {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(cppObject: UnsafeMutableRawPointer, dataSize: Int) {
        self.cppObject = cppObject
        self.dataSize = dataSize
    }

    // – Returns current value
    func value() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.vector_value(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> Bool {
        return Sandbox_CPP.vector_increment(cppObject)
    }

    // – Decrement iterator - return false if before begin and do not increment
    func decrement() -> Bool {
        return Sandbox_CPP.vector_decrement(cppObject)
    }
}

open class SwiftVectorWrapper {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(dataSize: Int) {
        self.cppObject = UnsafeMutableRawPointer(mutating: Sandbox_CPP.initializeVectorWrapper())
        self.dataSize = dataSize
    }

    // – Returns reference to the first element in the list
    func front() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.vector_front(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Returns reference to the last element in the list
    func back() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.vector_back(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    func data() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.vector_data(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Adds a new element ‘value’ at the end of the list
    func push_back(value: Data) {
        value.withUnsafeBytes {
            Sandbox_CPP.vector_push_back(cppObject, $0)
        }
    }

    // – Adds a new element ‘value’ at the end of the list
    func emplace_back(value: Data) {
        value.withUnsafeBytes {
            Sandbox_CPP.vector_emplace_back(cppObject, $0)
        }
    }

    // – Removes the last element of the list, and reduces size of the list by 1
    func pop_back() {
        Sandbox_CPP.vector_pop_back(cppObject)
    }

    // – Returns an iterator pointing to the first element of the list
    func begin() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_begin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the first element of the list
    func cbegin() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_cbegin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func end() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_end(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func cend() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_cend(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func rend() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_rend(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func rbegin() -> SwiftVectorIterator {
        return SwiftVectorIterator(cppObject: Sandbox_CPP.vector_rbegin(cppObject), dataSize: dataSize)
    }

    // – Returns whether the list is empty(1) or not(0)
    func empty() -> Bool {
        return Sandbox_CPP.vector_empty(cppObject)
    }

// – Returns the number of elements in the list
    func clear() {
        return Sandbox_CPP.vector_clear(cppObject)
    }

    // – Returns the number of elements in the list
    func size() -> Int {
        return Sandbox_CPP.vector_size(cppObject)
    }

    // – Returns the number of elements in the list
    func max_size() -> Int {
        return Sandbox_CPP.vector_max_size(cppObject)
    }

    // – Returns the number of elements in the list
    func capacity() -> Int {
        return Sandbox_CPP.vector_capacity(cppObject)
    }

}