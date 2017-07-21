import XCTest
@testable import BigMath

class BigMathTests: XCTestCase
{
	func testVersion() {
		XCTAssertEqual(BigMath.MPFRVersion, "3.1.2-p10")
	}
}
