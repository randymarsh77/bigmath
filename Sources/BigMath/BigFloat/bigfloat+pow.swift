import Foundation
import CMPFR

public func pow(_ x: BigFloat, _ e: BigFloat) -> BigFloat {
	var data = mpfr_t()
	mpfr_init2(&data, x._data._mpfr_prec * e._data._mpfr_prec)
	var inp = x._data
	var exp = e._data
	mpfr_pow(&data, &inp, &exp, MPFR_RNDN)
	return BigFloat(data)
}
