import Foundation

public extension Date {
    
    func adding(days: Int, using calendar: Calendar = .autoupdatingCurrent) -> Date {
        calendar.date(byAdding: .day, value: days, to: self)!
    }
    
    func adding(weeks: Int, using calendar: Calendar = .autoupdatingCurrent) -> Date {
        calendar.date(byAdding: .weekOfYear, value: weeks, to: self)!
    }
    
    func adding(months: Int, using calendar: Calendar = .autoupdatingCurrent) -> Date {
        calendar.date(byAdding: .month, value: months, to: self)!
    }
}
