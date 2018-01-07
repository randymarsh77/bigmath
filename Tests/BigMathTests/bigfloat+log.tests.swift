import XCTest
import BigMath

class BigFloatLogTests: XCTestCase
{
	func testLog10() {
		let a: BigFloat = 100
		let c: BigFloat = 2
		var v: BigFloat = 0
		self.measure {
			v = log10(a)
		}
		XCTAssert(v == c)
	}
}
