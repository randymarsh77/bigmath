import Foundation
import CMPFR

public enum RenderMode
{
	case base2
	case base10
	case base16
}

extension BigFloat : CustomStringConvertible
{
	/*
	From MPFR docs:

	Function: char * mpfr_get_str (char *str, mpfr_exp_t *expptr, int b, size_t n, mpfr_t op, mpfr_rnd_t rnd)

	Convert op to a string of digits in base b, with rounding in the direction rnd, where n is either zero (see below) or the number of significant digits output in the string; in the latter case, n must be greater or equal to 2. The base may vary from 2 to 62; otherwise the function does nothing and immediately returns a null pointer. If the input number is an ordinary number, the exponent is written through the pointer expptr (for input 0, the current minimal exponent is written); the type mpfr_exp_t is large enough to hold the exponent in all cases.

	The generated string is a fraction, with an implicit radix point immediately to the left of the first digit. For example, the number -3.1416 would be returned as "-31416" in the string and 1 written at expptr. If rnd is to nearest, and op is exactly in the middle of two consecutive possible outputs, the one with an even significand is chosen, where both significands are considered with the exponent of op. Note that for an odd base, this may not correspond to an even last digit: for example with 2 digits in base 7, (14) and a half is rounded to (15) which is 12 in decimal, (16) and a half is rounded to (20) which is 14 in decimal, and (26) and a half is rounded to (26) which is 20 in decimal.

	If n is zero, the number of digits of the significand is chosen large enough so that re-reading the printed value with the same precision, assuming both output and input use rounding to nearest, will recover the original value of op. More precisely, in most cases, the chosen precision of str is the minimal precision m depending only on p = PREC(op) and b that satisfies the above property, i.e., m = 1 + ceil(p*log(2)/log(b)), with p replaced by p-1 if b is a power of 2, but in some very rare cases, it might be m+1 (the smallest case for bases up to 62 is when p equals 186564318007 for bases 7 and 49).

	If str is a null pointer, space for the significand is allocated using the current allocation function and a pointer to the string is returned (unless the base is invalid). To free the returned string, you must use mpfr_free_str.

	If str is not a null pointer, it should point to a block of storage large enough for the significand, i.e., at least max(n + 2, 7). The extra two bytes are for a possible minus sign, and for the terminating null character, and the value 7 accounts for -@Inf@ plus the terminating null character. The pointer to the string str is returned (unless the base is invalid).

	Note: The NaN and inexact flags are currently not set when need be; this will be fixed in future versions. Programmers should currently assume that whether the flags are set by this function is unspecified.
	*/
	public func render(_ base: RenderMode) -> String {
		var b: Int32 = 10
		switch base {
		case .base2:
			b = 2
			break
		case .base16:
			b = 16
			break
		case .base10:
			b = 10
			break
		}
		let nullptr: UnsafeMutablePointer<Int8>? = nil
		var exp: mpfr_exp_t = 0
		var data = _data
		let str = mpfr_get_str(nullptr, &exp, b, data._mpfr_exp, &data, MPFR_RNDN)
		let s = String(cString:str!)
		mpfr_free_str(str)
		var lastSigIdx = exp - 1
		for (i, c) in s.enumerated() {
			if (i >= exp && c != "0") {
				lastSigIdx = i
			}
		}
		let result = lastSigIdx < exp
			? String(s.prefix(exp))
			: "\(s.prefix(exp)).\(s[s.index(s.startIndex, offsetBy: exp)...].prefix(lastSigIdx - exp + 1))"
		return result
	}

	public func render() -> String {
		return render(.base10)
	}

	public var description: String {
		return render(.base10)
	}
}
