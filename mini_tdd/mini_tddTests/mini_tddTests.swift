import XCTest

class TddTest: XCTestCase {
    func testRangeBeginAndEnd() {
        let closedRange = try! ClosedRange.init(begin: 3, end: 8)

        XCTAssert(closedRange.begin == 3)
        XCTAssert(closedRange.end == 8)
    }

    func testRangeWithString() {
        let closedRange = try! ClosedRange.init(begin: 3, end: 8)

        XCTAssert(closedRange.toString() == "[3,8]")
    }

    func testRangeErrirCase() {
        XCTAssertThrowsError(try ClosedRange.init(begin: 8, end: 3))
    }

    func testContainsInRange() {
        let closedRange = try! ClosedRange.init(begin: 3, end: 8)
        XCTAssertTrue(closedRange.contains(5))
    }

    func testNotContainsInRange() {
        let closedRange = try! ClosedRange.init(begin: 3, end: 8)
        XCTAssertFalse(closedRange.contains(-1))
    }


    func testSameRange() {
        let range1 = try! ClosedRange.init(begin: 3, end: 8)
        let range2 = try! ClosedRange.init(begin: 3, end: 8)
        XCTAssertTrue(range1.equals(range2))
    }

    func testNotSameRange() {
        let range1 = try! ClosedRange.init(begin: 3, end: 8)
        let range2 = try! ClosedRange.init(begin: 1, end: 6)
        XCTAssertFalse(range1.equals(range2))
    }

    func testContainesRange() {
        let range1 = try! ClosedRange.init(begin: 3, end: 8)
        let range2 = try! ClosedRange.init(begin: 4, end: 6)
        XCTAssertTrue(range1.contains(range2))
    }

    func testNotContainesRange() {
        let range1 = try! ClosedRange.init(begin: 3, end: 8)
        let range2 = try! ClosedRange.init(begin: 1, end: 10)
        XCTAssertFalse(range1.contains(range2))
    }
}
