import XCTest
import BigMath

class BigFloatRenderTests: XCTestCase
{
	func testRender() {
		XCTAssertEqual("\(BigFloat(1))", "1")
		XCTAssertEqual("\(BigFloat(100))", "100")
		XCTAssertEqual("\(BigFloat(101))", "101")
		XCTAssertEqual("\(BigFloat(100.1))", "100.0999999999999")
		XCTAssertEqual("\(BigFloat(100.10))", "100.0999999999999")
	}
}
