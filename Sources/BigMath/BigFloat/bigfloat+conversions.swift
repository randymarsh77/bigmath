import Foundation
import CMPFR

extension BigFloat
{
	public func toDouble() -> Double
	{
		var n = self._data
		return mpfr_get_d(&n, MPFR_RNDN)
	}

	public func toInt() -> Int
	{
		return Int(toDouble())
	}
}
