import Foundation

extension UUID: ExpressibleByStringLiteral {

	public init(stringLiteral value: String) {
		self = UUID(uuidString: value)!
	}
}
