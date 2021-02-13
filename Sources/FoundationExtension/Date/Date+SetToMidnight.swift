import Foundation

public extension Date {
    
    func setToMidnight(using calendar: Calendar = .autoupdatingCurrent) -> Date {
        calendar.date(bySettingHour: 0, minute: 0, second: 0, of: self)!
    }
}
