import Foundation
import CMPFR

extension BigFloat
{
	public var magnitude: BigFloat {
		ThrowNotImplemented()
		return BigFloat(0)
	}

	public var sign: FloatingPointSign {
		return _data._mpfr_sign > 0 ? .plus : .minus
	}

	public var exponent: Int {
		return _data._mpfr_exp
	}

	public var significand: BigFloat {
		ThrowNotImplemented()
		return self
	}

	public var exponentBitPattern: UInt64 {
		ThrowNotImplemented()
		return 0
	}

	public var significandBitPattern: UInt64 {
		ThrowNotImplemented()
		return 0
	}

	public var binade: BigFloat {
		ThrowNotImplemented()
		return self
	}

	public var significandWidth: Int {
		ThrowNotImplemented()
		return 0
	}
}
