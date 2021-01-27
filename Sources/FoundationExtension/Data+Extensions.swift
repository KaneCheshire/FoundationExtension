import Foundation

public extension Data {

	func toInt<I: FixedWidthInteger>(_ format: I.Type) -> Int {
		return Int(converted() as I)
	}

	var toBool: Bool { converted() }

	private func converted<T>() -> T {
		withUnsafeBytes { $0.load(as: T.self) }
	}

	var toString: String {
		String(data: self, encoding: .utf8)!
	}

}

public extension Date {

	static var now: Date { Date() }
	var elapsedDuration: TimeInterval { Date.now.timeIntervalSince(self) }
}
