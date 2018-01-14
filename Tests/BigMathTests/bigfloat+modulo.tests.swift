import XCTest
import BigMath

class BigFloatModuloTests: XCTestCase
{
	func testModOperator() {
		let a: BigFloat = 13
		let b: BigFloat = 10
		let c: BigFloat = 3
		var v: BigFloat = 0
		self.measure {
			v = a % b
		}
		XCTAssert(v == c)
	}
}
