import Foundation
import CMPFR

public func log(_ x: BigFloat) -> BigFloat {
	var data = mpfr_t()
	mpfr_init(&data)
	var inp = x._data
	mpfr_log(&data, &inp, MPFR_RNDN)
	return BigFloat(data)
}

public func log2(_ x: BigFloat) -> BigFloat {
	var data = mpfr_t()
	mpfr_init(&data)
	var inp = x._data
	mpfr_log2(&data, &inp, MPFR_RNDN)
	return BigFloat(data)
}

public func log10(_ x: BigFloat) -> BigFloat {
	var data = mpfr_t()
	mpfr_init(&data)
	var inp = x._data
	mpfr_log10(&data, &inp, MPFR_RNDN)
	return BigFloat(data)
}
