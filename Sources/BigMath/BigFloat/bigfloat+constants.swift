import Foundation
import CMPFR

internal let MPFR_EXP_MAX = (mpfr_exp_t) ( -1 >> 1)
internal let MPFR_EXP_NAN = (1 - MPFR_EXP_MAX)
internal let MPFR_EXP_ZERO = (0 - MPFR_EXP_MAX)
internal let MPFR_EXP_INF = (2 - MPFR_EXP_MAX)

extension BigFloat
{
	public static var nan: BigFloat {
		return BigFloat()
	}

	public static var signalingNaN: BigFloat {
		return BigFloat()
	}

	public static var infinity: BigFloat {
		return BigFloat(MPFR_EXP_INF)
	}

	public static var greatestFiniteMagnitude: BigFloat {
		return BigFloat(0)
	}

	public static var pi: BigFloat {
		return BigFloat(3.14)
	}

	public static var leastNormalMagnitude: BigFloat {
		return BigFloat(0)
	}

	public static var leastNonzeroMagnitude: BigFloat {
		return BigFloat(0)
	}

	public static var exponentBitCount: Int {
		return 0
	}

	public static var significandBitCount: Int {
		return 0
	}
}
