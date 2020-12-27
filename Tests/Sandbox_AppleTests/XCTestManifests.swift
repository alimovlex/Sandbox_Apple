import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Sandbox_AppleTests.allTests),
    ]
}
#endif
