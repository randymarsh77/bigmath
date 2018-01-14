import Foundation
import CMPFR

extension BigFloat
{
	public static func %(lhs: BigFloat, rhs: BigFloat) -> BigFloat {
		var a = lhs._data
		var b = rhs._data
		var v = mpfr_t()
		mpfr_init(&v)
		mpfr_remainder(&v, &a, &b, MPFR_RNDN)
		return BigFloat(v)
	}
}
