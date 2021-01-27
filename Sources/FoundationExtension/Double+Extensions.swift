import Foundation

public extension Double {

	func convert<U: Dimension>(from: U, to: U) -> Double {
		Measurement(value: self, unit: from).converted(to: to).value
	}

	func formatted(using formatter: NumberFormatter) -> String {
		formatter.string(from: self as NSNumber)!
	}

	func formatted(using formatter: DateComponentsFormatter) -> String {
		formatter.string(from: self)!
	}
}
