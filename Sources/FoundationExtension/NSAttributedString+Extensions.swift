import Foundation

public extension NSAttributedString {

	func range(of expected: String) -> NSRange {
		(string as NSString).range(of: expected)
	}
}
