import XCTest
@testable import FoundationExtension

final class Sequence_SetKeyPathTests: XCTestCase {
    
    class MockClass {
        var valueA: Bool = false
        var valueB: Int = 0
        var valueC: String?
    }
    
    struct MockStruct {
        var valueA: Bool = false
        var valueB: Int = 0
        var valueC: String?
    }
    
    struct MockStruct2 {
        var value = MockClass()
    }
    
    func test_referenceTypes() {
        let sut = [MockClass(), MockClass(), MockClass()]
        sut.forEach {
            XCTAssertEqual($0.valueA, false)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueA, to: true)
        sut.forEach {
            XCTAssertEqual($0.valueA, true)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueB, to: 1)
        sut.forEach {
            XCTAssertEqual($0.valueA, true)
            XCTAssertEqual($0.valueB, 1)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueC, to: "Hello")
        sut.forEach {
            XCTAssertEqual($0.valueA, true)
            XCTAssertEqual($0.valueB, 1)
            XCTAssertEqual($0.valueC, "Hello")
        }
    }
    
    func test_valueTypes() {
        let sut = [MockStruct(), MockStruct(), MockStruct()]
        sut.forEach {
            XCTAssertEqual($0.valueA, false)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueA, to: true)
        sut.forEach {
            XCTAssertEqual($0.valueA, false)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueB, to: 1)
        sut.forEach {
            XCTAssertEqual($0.valueA, false)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertNil($0.valueC)
        }
        
        sut.set(\.valueC, to: "Hello")
        sut.forEach {
            XCTAssertEqual($0.valueA, false)
            XCTAssertEqual($0.valueB, 0)
            XCTAssertEqual($0.valueC, nil)
        }
    }
    
    func test_changingAPropertysProperty() {
        let sut = [MockStruct2()]
        sut.forEach {
            XCTAssertEqual($0.value.valueA, false)
        }
        
        sut.set(\.value.valueA, to: true)
        sut.forEach {
            XCTAssertEqual($0.value.valueA, true)
        }
    }
}
