import Foundation
import Sandbox_CPP

open class SwiftForwardListIterator {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(cppObject: UnsafeMutableRawPointer, dataSize: Int) {
        self.cppObject = cppObject
        self.dataSize = dataSize
    }

    // – Returns current value
    func value() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.forwardList_value(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> Bool {
        return Sandbox_CPP.forwardList_increment(cppObject)
    }

}

open class SwiftForwardListWrapper {
    fileprivate let cppObject: UnsafeMutableRawPointer
    fileprivate let dataSize: Int

    init(dataSize: Int) {
        self.cppObject = UnsafeMutableRawPointer(mutating: Sandbox_CPP.initializeForwardListWrapper())
        self.dataSize = dataSize
    }

    // – Returns reference to the first element in the list
    func front() -> Data? {
        if let p:UnsafeMutableRawPointer = UnsafeMutableRawPointer(mutating: Sandbox_CPP.forwardList_front(cppObject)) {
            let data = Data(bytes: p, count: dataSize)
            return data
        }

        return nil
    }

    // – Returns an iterator pointing to the first element of the list
    func begin() -> SwiftListIterator {
        return SwiftListIterator(cppObject: Sandbox_CPP.forwardList_begin(cppObject), dataSize: dataSize)
    }

    // – Returns an iterator pointing to the theoretical last element which follows the last element
    func end() -> SwiftListIterator {
        return SwiftListIterator(cppObject: Sandbox_CPP.forwardList_end(cppObject), dataSize: dataSize)
    }

    // – Returns whether the list is empty(1) or not(0)
    func empty() -> Bool {
        return Sandbox_CPP.forwardList_empty(cppObject)
    }

}