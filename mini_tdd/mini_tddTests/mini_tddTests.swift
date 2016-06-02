import XCTest

class TddTest: XCTestCase {
    func testRangeBeginAndEnd() {
        let closedRange = ClosedRange.init(begin: 3, end: 8)

        XCTAssert(closedRange.begin == 3)
        XCTAssert(closedRange.end == 8)
    }

    func testRangeWithString() {
        let closedRange = ClosedRange.init(begin: 3, end: 8)

        XCTAssert(closedRange.toString() == "[3,8]")
    }
}
