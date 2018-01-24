import XCTest
import BigMath

class BigFloatPowTests: XCTestCase
{
	func testPow() {
		let a: BigFloat = 100
		let b: BigFloat = 2
		let c: BigFloat = 10000
		var v: BigFloat = 0
		self.measure {
			v = pow(a, b)
		}
		XCTAssert(v == c)
	}

	func testPowTo0() {
		let a: BigFloat = 10
		let b: BigFloat = 0
		let c: BigFloat = 1
		var v: BigFloat = 0
		self.measure {
			v = pow(a, b)
		}
		XCTAssert(v == c)
	}
}
