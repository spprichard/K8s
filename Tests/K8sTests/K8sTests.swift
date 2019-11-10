import XCTest
@testable import K8s

final class K8sTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(K8s().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
