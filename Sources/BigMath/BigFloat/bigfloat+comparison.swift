import Foundation
import CMPFR

extension BigFloat
{
	public static func ==(lhs: BigFloat, rhs: BigFloat) -> Bool {
		return lhs.isEqual(to: rhs)
	}

	public static func <(lhs: BigFloat, rhs: BigFloat) -> Bool {
		return lhs.isLess(than: rhs)
	}

	public static func <=(lhs: BigFloat, rhs: BigFloat) -> Bool {
		return lhs.isLessThanOrEqualTo(rhs)
	}

	public static func >(lhs: BigFloat, rhs: BigFloat) -> Bool {
		return lhs.isGreater(than: rhs)
	}

	public static func >=(lhs: BigFloat, rhs: BigFloat) -> Bool {
		return lhs.isGreaterThanOrEqualTo(rhs)
	}
	public func isEqual(to other: BigFloat) -> Bool {
		var a = _data
		var b = other._data
		return mpfr_equal_p(&a, &b) != 0
	}

	public func isLess(than other: BigFloat) -> Bool {
		var a = _data
		var b = other._data
		return mpfr_less_p(&a, &b) != 0
	}

	public func isLessThanOrEqualTo(_ other: BigFloat) -> Bool {
		var a = _data
		var b = other._data
		return mpfr_lessequal_p(&a, &b) != 0
	}

	public func isGreater(than other: BigFloat) -> Bool {
		var a = _data
		var b = other._data
		return mpfr_greater_p(&a, &b) != 0
	}

	public func isGreaterThanOrEqualTo(_ other: BigFloat) -> Bool {
		var a = _data
		var b = other._data
		return mpfr_greaterequal_p(&a, &b) != 0
	}

	public var isNormal: Bool {
		// From docs:
		//   A normal value is a finite number that uses the full
		//   precision available to values of a type.
		//   Zero is neither a normal nor a subnormal number
		// We have arbitrary precision, so nothing is normal.
		return false
	}

	public var isZero: Bool {
		var a = _data
		return mpfr_zero_p(&a) != 0
	}

	public var isSubnormal: Bool {
		// From docs:
		//   A subnormal value is a nonzero number that has a lesser magnitude
		//   than the smallest normal number. Subnormal values do not use the
		//   full precision available to values of a type.
		// We have arbitaryprecision, so there is no smallestnormal number,
		// therefore, no subnormal values.
		return false
	}

	//	Function: int mpfr_number_p (mpfr_t op)
	//	Function: int mpfr_regular_p (mpfr_t op)

	public var isNaN: Bool {
		var a = _data
		return mpfr_nan_p(&a) != 0
	}

	public var isSignalingNaN: Bool {
		var a = _data
		return mpfr_inf_p(&a) != 0
	}

	public var isCanonical: Bool {
		ThrowNotImplemented()
		return true
	}

	public var isFinite: Bool { return !isInfinite }

	public var isInfinite: Bool {
		var t: mpfr_t = _data
		return mpfr_inf_p(&t) != 0
	}
}
