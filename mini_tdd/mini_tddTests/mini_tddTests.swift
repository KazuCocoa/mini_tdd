import XCTest

class TddTest: XCTestCase {
    func testRangeBeginAndEnd() {
        let closedRange = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)

        XCTAssert(closedRange.lowerEndpoint == 3)
        XCTAssert(closedRange.upperEndpoint == 8)
    }

    func testRangeAsArray() {
        let closedRange = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)

        XCTAssert(closedRange.array == [3,4,5,6,7,8])
    }

    func testRangeWithString() {
        let closedRange = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)

        XCTAssert(closedRange.toString() == "[3,8]")
    }

    func testRangeErrirCase() {
        XCTAssertThrowsError(try ClosedRange.init(lowerEndpoint: 8, upperEndpoint: 3))
    }

    func testContainsInRange() {
        let closedRange = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        XCTAssertTrue(closedRange.contains(5))
    }

    func testNotContainsInRange() {
        let closedRange = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        XCTAssertFalse(closedRange.contains(-1))
    }


    func testSameRange() {
        let range1 = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        let range2 = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        XCTAssertTrue(range1.equals(range2))
    }

    func testNotSameRange() {
        let range1 = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        let range2 = try! ClosedRange.init(lowerEndpoint: 1, upperEndpoint: 6)
        XCTAssertFalse(range1.equals(range2))
    }

    func testContainesRange() {
        let range1 = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        let range2 = try! ClosedRange.init(lowerEndpoint: 4, upperEndpoint: 6)
        XCTAssertTrue(range1.contains(range2))
    }

    func testNotContainesRange() {
        let range1 = try! ClosedRange.init(lowerEndpoint: 3, upperEndpoint: 8)
        let range2 = try! ClosedRange.init(lowerEndpoint: 1, upperEndpoint: 10)
        XCTAssertFalse(range1.contains(range2))
    }
}
