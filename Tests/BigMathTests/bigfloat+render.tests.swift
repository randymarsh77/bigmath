import XCTest
import BigMath

class BigFloatRenderTests: XCTestCase
{
	func testRender() {
//		let d = BigFloat(1.8) * pow(BigFloat(10), BigFloat(309))
//		XCTAssertEqual("\(d)", "1.8x10^309")
		XCTAssertEqual("\(BigFloat(1))", "1")
		XCTAssertEqual("\(BigFloat(100))", "100")
		XCTAssertEqual("\(BigFloat(101))", "101")
		XCTAssertEqual("\(BigFloat(100.1))", "100.1")
		XCTAssertEqual("\(BigFloat(100.10))", "100.1")
		XCTAssertEqual("\(BigFloat("197623457862345786234789234587264325789", .base10))", "197623457862345786234789234587264325789")
	}
}
