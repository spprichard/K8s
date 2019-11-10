import XCTest

import K8sTests

var tests = [XCTestCaseEntry]()
tests += K8sTests.allTests()
XCTMain(tests)
