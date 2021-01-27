import Foundation

public extension NSMutableAttributedString {

	func add(_ attributes: [NSAttributedString.Key: Any], to string: String) {
		addAttributes(attributes, range: range(of: string))
	}
}

