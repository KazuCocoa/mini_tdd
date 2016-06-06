import XCTest

class Tdd2Test: XCTestCase {
    func testIsValid() {
        XCTAssertTrue(Version.isValid("JDK7u40"))
        XCTAssertFalse(Version.isValid("hoge"))
        XCTAssertFalse(Version.isValid("JDK7u9x"))
    }
}