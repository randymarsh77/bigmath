import Foundation
import CMPFR

extension BigFloat
{
	public static func /(lhs: BigFloat, rhs: BigFloat) -> BigFloat {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_div(&v, &a, &b, MPFR_RNDN)
		return BigFloat(v)
	}

	public static func /=(lhs: inout BigFloat, rhs: BigFloat) {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_div(&v, &a, &b, MPFR_RNDN)
		lhs = BigFloat(v)
	}

	public static func *(lhs: BigFloat, rhs: BigFloat) -> BigFloat {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_mul(&v, &a, &b, MPFR_RNDN)
		return BigFloat(v)
	}

	public static func *=(lhs: inout BigFloat, rhs: BigFloat) {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_mul(&v, &a, &b, MPFR_RNDN)
		lhs = BigFloat(v)
	}

	public static func abs(_ x: BigFloat) -> BigFloat {
		try! ThrowNotImplemented()
		return x
	}

	public prefix static func +(x: BigFloat) -> BigFloat {
		try! ThrowNotImplemented()
		return x
	}

	public static func +(lhs: BigFloat, rhs: BigFloat.Stride) -> BigFloat {
		try! ThrowNotImplemented()
		return lhs
	}

	public static func +(lhs: BigFloat.Stride, rhs: BigFloat) -> BigFloat {
		try! ThrowNotImplemented()
		return rhs
	}

	public static func +(lhs: BigFloat, rhs: BigFloat) -> BigFloat {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_add(&v, &a, &b, MPFR_RNDN)
		return BigFloat(v)
	}

	public static func +=(lhs: inout BigFloat, rhs: BigFloat) {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_add(&v, &a, &b, MPFR_RNDN)
		lhs = BigFloat(v)
	}

	public prefix static func -(operand: BigFloat) -> BigFloat {
		try! ThrowNotImplemented()
		return operand
	}

	public static func -(lhs: BigFloat, rhs: BigFloat) -> BigFloat {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_sub(&v, &a, &b, MPFR_RNDN)
		return BigFloat(v)
	}

	public static func -=(lhs: inout BigFloat, rhs: BigFloat) {
		var a = lhs._data
		var b = rhs._data
		var v = BigFloat.nan._data
		mpfr_sub(&v, &a, &b, MPFR_RNDN)
		lhs = BigFloat(v)
	}

	public mutating func formRemainder(dividingBy other: BigFloat) {
		try! ThrowNotImplemented()
	}

	public mutating func formTruncatingRemainder(dividingBy other: BigFloat) {
		try! ThrowNotImplemented()
	}

	public mutating func formSquareRoot() {
		try! ThrowNotImplemented()
	}

	public mutating func addProduct(_ lhs: BigFloat, _ rhs: BigFloat) {
		try! ThrowNotImplemented()
	}

	public var nextUp: BigFloat {
		try! ThrowNotImplemented()
		return self
	}

	public var ulp: BigFloat {
		try! ThrowNotImplemented()
		return BigFloat(0)
	}

	public static var ulpOfOne: BigFloat {
		get {
			try! ThrowNotImplemented()
			return BigFloat()
		}
	}

	public func distance(to other: BigFloat) -> BigFloat.Stride {
		try! ThrowNotImplemented()
		return 0
	}

	public func advanced(by n: BigFloat.Stride) -> BigFloat {
		return self + n
	}
}
