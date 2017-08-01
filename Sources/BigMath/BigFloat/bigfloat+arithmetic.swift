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
		ThrowNotImplemented()
		return x
	}

	public prefix static func +(x: BigFloat) -> BigFloat {
		ThrowNotImplemented()
		return x
	}

	public static func +(lhs: BigFloat, rhs: BigFloat.Stride) -> BigFloat {
		ThrowNotImplemented()
		return lhs
	}

	public static func +(lhs: BigFloat.Stride, rhs: BigFloat) -> BigFloat {
		ThrowNotImplemented()
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
		ThrowNotImplemented()
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
		ThrowNotImplemented()
	}

	public mutating func formTruncatingRemainder(dividingBy other: BigFloat) {
		ThrowNotImplemented()
	}

	public mutating func formSquareRoot() {
		ThrowNotImplemented()
	}

	public mutating func addProduct(_ lhs: BigFloat, _ rhs: BigFloat) {
		ThrowNotImplemented()
	}

	public var nextUp: BigFloat {
		ThrowNotImplemented()
		return self
	}

	public var ulp: BigFloat {
		ThrowNotImplemented()
		return BigFloat(0)
	}

	public static var ulpOfOne: BigFloat {
		get {
			ThrowNotImplemented()
			return BigFloat()
		}
	}

	public func distance(to other: BigFloat) -> BigFloat.Stride {
		ThrowNotImplemented()
		return 0
	}

	public func advanced(by n: BigFloat.Stride) -> BigFloat {
		return self + n
	}
}
