import Foundation
import CMPFR

extension BigFloat
{
	public var magnitude: BigFloat {
		try! ThrowNotImplemented()
		return BigFloat(0)
	}

	public var sign: FloatingPointSign {
		return _data._mpfr_sign > 0 ? .plus : .minus
	}

	public var exponent: Int {
		return _data._mpfr_exp
	}

	public var significand: BigFloat {
		try! ThrowNotImplemented()
		return self
	}

	public var exponentBitPattern: UInt64 {
		try! ThrowNotImplemented()
		return 0
	}

	public var significandBitPattern: UInt64 {
		try! ThrowNotImplemented()
		return 0
	}

	public var binade: BigFloat {
		try! ThrowNotImplemented()
		return self
	}

	public var significandWidth: Int {
		try! ThrowNotImplemented()
		return 0
	}
}
