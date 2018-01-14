import Foundation
import CMPFR

extension BigFloat
{
	public init() {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init(_ value: Int) {
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_si(&data, value, MPFR_RNDN)
		_data = data
	}

	public init(_ value: Int8) { self.init(Int(value)) }
	public init(_ value: Int16) { self.init(Int(value)) }
	public init(_ value: Int32) { self.init(Int(value)) }
	public init(_ value: Int64) { self.init(Int(value)) }

	public init(_ value: UInt) {
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_ui(&data, value, MPFR_RNDN)
		_data = data
	}

	public init(_ value: UInt8) { self.init(UInt(value)) }
	public init(_ value: UInt16) { self.init(UInt(value)) }
	public init(_ value: UInt32) { self.init(UInt(value)) }
	public init(_ value: UInt64) { self.init(UInt(value)) }

	public init(_ value: Float) {
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_flt(&data, value, MPFR_RNDN)
		_data = data
	}

	public init(_ value: Double) {
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_d(&data, value, MPFR_RNDN)
		_data = data
	}

	public init(_ value: Float80) {
		let str = value.description
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_str(&data, str.cString(using: .utf8), 10, MPFR_RNDN)
		_data = data
	}
	
	public init(floatLiteral value: FloatLiteralType) { self.init(value) }

	public init(integerLiteral value: IntegerLiteralType) { self.init(value) }

	public init(signOf: BigFloat, magnitudeOf: BigFloat) {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init?<T>(exactly source: T) where T : BinaryInteger {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init(sign: FloatingPointSign, exponentBitPattern: UInt64, significandBitPattern: UInt64) {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init(sign: FloatingPointSign, exponent: Int, significand: BigFloat) {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init(sign: FloatingPointSign, exponent: Int64, significand: BigFloat) {
		var data = mpfr_t()
		mpfr_init(&data)
		_data = data
	}

	public init(_ string: String, _ base: RenderMode) {
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
		var data = mpfr_t()
		mpfr_init(&data)
		mpfr_set_str(&data, string.cString(using: .utf8)!, b, MPFR_RNDN)
		_data = data
	}

	internal init(_ data: mpfr_t) {
		_data = data
	}
}
