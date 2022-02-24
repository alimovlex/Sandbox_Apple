import Foundation

struct EmptyStruct {

}

struct SampleStruct {
  let number: UInt32
  let flag: Bool
}

class EmptyClass {

}

class SampleClass {
  let number: Int64 = 0
  let flag = false
}


func foundationTypeMemorySizes() {
    print("The size of an Int pointer is \(MemoryLayout<Int>.size) bytes");          // returns 8 (on 64-bit)
    print("The alignment of an Int ailgnment is \( MemoryLayout<Int>.alignment) bytes");     // returns 8 (on 64-bit)
    print("The stride of an Int stride is \( MemoryLayout<Int>.stride) bytes");        // returns 8 (on 64-bit)

    print("The size of a Double pointer is \(MemoryLayout<Double>.size) bytes");          // returns 8 (on 64-bit)
    print("The alignment of a Double alignment is \( MemoryLayout<Double>.alignment) bytes");     // returns 8 (on 64-bit)
    print("The stride of a Double stride is \( MemoryLayout<Double>.stride) bytes");        // returns 8 (on 64-bit)

    print("The size of a Float pointer is \(MemoryLayout<Float>.size) bytes");          // returns 4
    print("The alignment of a Float alignment is \( MemoryLayout<Float>.alignment) bytes");     // 4
    print("The stride of a Float stride is \( MemoryLayout<Float>.stride) bytes");        // 4

    print("The size of an Int16 pointer is \(MemoryLayout<Int16>.size) bytes");        // returns 2
    print("The size of an Int16 alignment is \(MemoryLayout<Int16>.alignment) bytes");   // returns 2
    print("The size of an Int stride is \(MemoryLayout<Int16>.stride) bytes");      // returns 2

    print("The size of a Boolean pointer is \(MemoryLayout<Bool>.size) byte");         // returns 1
    print("The size of a Boolean alignment is \(MemoryLayout<Bool>.alignment) byte");    // returns 1
    print("The size of a Boolean stride is \(MemoryLayout<Bool>.stride) byte");       // returns 1

}

func structMemorySizes() {
    print("The size of an EmptyStruct pointer is \(MemoryLayout<EmptyStruct>.size) bytes");      // returns 0
    print("The size of an EmptyStruct alignment is \(MemoryLayout<EmptyStruct>.alignment) byte"); // returns 1
    print("The size of an EmptyStruct stride is \(MemoryLayout<EmptyStruct>.stride) byte");    // returns 1

    print("The size of the SampleStruct pointer is \(MemoryLayout<SampleStruct>.size) bytes");       // returns 5
    print("The size of the SampleStruct alignment is \(MemoryLayout<SampleStruct>.alignment) bytes");  // returns 4
    print("The size of the SampleStruct stride is \(MemoryLayout<SampleStruct>.stride) bytes");     // returns 8
}

func classMemorySizes() {
    print("The size of an EmptyClass pointer is \(MemoryLayout<EmptyClass>.size) bytes");      // returns 8 (on 64-bit)
    print("The size of an EmptyClass stride is \(MemoryLayout<EmptyClass>.stride) bytes");    // returns 8 (on 64-bit)
    print("The size of an EmptyClass alignment is \(MemoryLayout<EmptyClass>.alignment) bytes"); // returns 8 (on 64-bit)

    print("The size of the SampleClass pointer is \(MemoryLayout<SampleClass>.size) bytes");      // returns 8 (on 64-bit)
    print("The size of the SampleClass stride is \(MemoryLayout<SampleClass>.stride) bytes");    // returns 8 (on 64-bit)
    print("The size of the SampleClass pointer is \(MemoryLayout<SampleClass>.alignment) bytes"); // returns 8 (on 64-bit)
}

func rawPointersInteraction() {
    // 1
let count = 2
let stride = MemoryLayout<Int>.stride
let alignment = MemoryLayout<Int>.alignment
let byteCount = stride * count

// 2
do {
  print("Raw pointers Interaction")
  
  // 3
  let pointer = UnsafeMutableRawPointer.allocate(
    byteCount: byteCount,
    alignment: alignment)
  // 4
  defer {
    pointer.deallocate()
  }
  
  // 5
  pointer.storeBytes(of: 42, as: Int.self)
  pointer.advanced(by: stride).storeBytes(of: 6, as: Int.self)
  pointer.load(as: Int.self)
  pointer.advanced(by: stride).load(as: Int.self)
  
  // 6
  let bufferPointer = UnsafeRawBufferPointer(start: pointer, count: byteCount)
  for (index, byte) in bufferPointer.enumerated() {
    print("byte \(index) -> \(byte)")
  }

  }

  do {
  print("Converting raw pointers to typed pointers")
  
  let rawPointer = UnsafeMutableRawPointer.allocate(
    byteCount: byteCount,
    alignment: alignment)
  defer {
    rawPointer.deallocate()
  }
  
  let typedPointer = rawPointer.bindMemory(to: Int.self, capacity: count)
  typedPointer.initialize(repeating: 0, count: count)
  defer {
    typedPointer.deinitialize(count: count)
  }

  typedPointer.pointee = 42
  typedPointer.advanced(by: 1).pointee = 6
  typedPointer.pointee
  typedPointer.advanced(by: 1).pointee
  
  let bufferPointer = UnsafeBufferPointer(start: typedPointer, count: count)
  for (index, value) in bufferPointer.enumerated() {
    print("value \(index) -> \(value)")
  }
}


}