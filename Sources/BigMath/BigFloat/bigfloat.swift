import Foundation
import CMPFR

public struct BigFloat
{
	let _data: mpfr_t
}

extension BigFloat : BinaryFloatingPoint
{
	public mutating func round(_ rule: FloatingPointRoundingRule) {
		try! ThrowNotImplemented()
	}

	public var hashValue: Int {
		return self.render(.base10).hashValue
	}

	public typealias RawSignificand = UInt64

	public typealias RawExponent = UInt64

	public typealias IntegerLiteralType = Int64

	public typealias Exponent = Int

	public typealias FloatLiteralType = Float80

	public typealias Magnitude = BigFloat

	public typealias Stride = Float80
}
