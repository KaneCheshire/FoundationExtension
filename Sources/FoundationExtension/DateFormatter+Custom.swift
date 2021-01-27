import Foundation

public extension DateFormatter {

	static let mediumDateNoTime: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .medium
		formatter.timeStyle = .none
		return formatter
	}()

	static let noDateMediumTime: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .none
		formatter.timeStyle = .medium
		return formatter
	}()

	static let noDateShortTime: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .none
		formatter.timeStyle = .short
		return formatter
	}()

	static let longDateNoTime: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .long
		formatter.timeStyle = .none
		return formatter
	}()

}

public extension DateComponentsFormatter {

	static let shortDayHourMinute: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		formatter.unitsStyle = .short
		formatter.allowedUnits = [.day, .hour, .minute]
		return formatter
	}()

	static let shortDayHourMinuteSecond: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		formatter.unitsStyle = .short
		formatter.allowedUnits = [.day, .hour, .minute, .second]
		return formatter
	}()

	static let fullDayHourMinute: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		formatter.unitsStyle = .full
		formatter.allowedUnits = [.day, .hour, .minute]
		return formatter
	}()

	static let positionalHourMinuteSecond: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		formatter.unitsStyle = .positional
		formatter.allowedUnits = [.hour, .minute, .second]
		formatter.zeroFormattingBehavior = .pad
		return formatter
	}()
}

public extension MeasurementFormatter {

	static let short: MeasurementFormatter = {
		let formatter = MeasurementFormatter()
		formatter.unitStyle = .short
		return formatter
	}()

	static let medium: MeasurementFormatter = {
		let formatter = MeasurementFormatter()
		formatter.unitStyle = .medium
		return formatter
	}()

	static let long: MeasurementFormatter = {
		let formatter = MeasurementFormatter()
		formatter.unitStyle = .long
		return formatter
	}()
}

public extension NumberFormatter {

	static let oneDecimalPlace: NumberFormatter = {
		let formatter = NumberFormatter()
		formatter.numberStyle = .decimal
		formatter.maximumFractionDigits = 1
		formatter.minimumFractionDigits = 1
		return formatter
	}()
}
