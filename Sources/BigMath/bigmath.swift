import CGMP
import CMPFR

public enum BigMathError : Error
{
	case Unknown
	case NotImplemented
}

public class BigMath
{
	public static var MPFRVersion: String {
		let v = mpfr_get_version()
		let s = String.init(cString: v!)
		return s
	}
}

internal func ThrowNotImplemented() throws {
	throw BigMathError.NotImplemented
}
