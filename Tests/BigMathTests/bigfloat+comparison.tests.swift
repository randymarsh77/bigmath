import XCTest
import BigMath

class BigFloatComparisonTests: XCTestCase
{
    func testEquality() {
		let a: BigFloat = 1
		let b: BigFloat = 1
		var v = false
		self.measure {
			v = a == b
		}
		XCTAssert(v)
    }

	func testGreaterThan() {
		let a: BigFloat = 2
		let b: BigFloat = 1
		var v = false
		self.measure {
			v = a > b
		}
		XCTAssert(v)
	}

	func testLessThan() {
		let a: BigFloat = 1
		let b: BigFloat = 2
		var v = false
		self.measure {
			v = a < b
		}
		XCTAssert(v)
	}

	func testNan() {
		let a = BigFloat.nan
		var v = false
		self.measure {
			v = a.isNaN
		}
		XCTAssert(v)
	}

	func testNotNan() {
		let a: BigFloat = 1
		var v = false
		self.measure {
			v = a.isNaN
		}
		XCTAssert(!v)
	}
}
