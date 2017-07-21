import XCTest
import BigMath

class BigFloatArithmeticTests: XCTestCase
{
	func testAdd() {
		let a: BigFloat = 1
		let b: BigFloat = 2
		let c: BigFloat = 3
		var v: BigFloat = 0
		self.measure {
			v = a + b
		}
		XCTAssert(v == c)
	}

	func testAddEquals() {
		var a: BigFloat = 1
		let b: BigFloat = 2
		let c: BigFloat = 3
		a += b
		XCTAssert(a == c)
	}

	func testSubtract() {
		let a: BigFloat = 1
		let b: BigFloat = 2
		let c: BigFloat = 3
		var v: BigFloat = 0
		self.measure {
			v = c - b
		}
		XCTAssert(v == a)
	}

	func testDivide() {
		let a: BigFloat = 10
		let b: BigFloat = 5
		let c: BigFloat = 2
		var v: BigFloat = 0
		self.measure {
			v = a / b
		}
		XCTAssert(v == c)
	}

	func testMultiply() {
		let a: BigFloat = 10
		let b: BigFloat = 5
		let c: BigFloat = 2
		var v: BigFloat = 0
		self.measure {
			v = c * b
		}
		XCTAssert(v == a)
	}
}
