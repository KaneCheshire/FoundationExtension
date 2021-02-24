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
    
    func adding(years: Int, using calendar: Calendar = .autoupdatingCurrent) -> Date {
        calendar.date(byAdding: .year, value: years, to: self)!
    }
    
    func nextWeekend(using calendar: Calendar = .autoupdatingCurrent) -> Date {
        let a = calendar.nextWeekend(startingAfter: self)!
        return a.start
    }
}
