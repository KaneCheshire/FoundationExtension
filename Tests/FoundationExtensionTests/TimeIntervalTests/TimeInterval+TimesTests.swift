import XCTest
@testable import FoundationExtension

final class TimeInterval_TimesTests: XCTestCase {
    
    func test_times() {
        XCTAssertEqual(TimeInterval.oneMinute, 60)
        XCTAssertEqual(TimeInterval.fiveMinutes, 300)
        XCTAssertEqual(TimeInterval.oneHour, 3600)
        XCTAssertEqual(TimeInterval.twentyFourHours, 86400)
    }
}
