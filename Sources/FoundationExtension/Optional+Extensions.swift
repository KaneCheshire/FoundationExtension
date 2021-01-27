import Foundation

public extension Optional {

	var exists: Bool {
		switch self {
		case .none: return false
		case .some: return true
		}
	}
}
