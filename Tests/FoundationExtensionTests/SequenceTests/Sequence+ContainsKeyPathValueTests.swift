import XCTest

final class Sequence_ContainsKeyPathValueTestS: XCTestCase {
    
    struct MockValue {
        let value: String
    }
    
    func test_contains() {
        let sut = [MockValue(value: "a"), MockValue(value: "b"), MockValue(value: "c")]
        XCTAssertTrue(sut.contains(where: \.value, is: "a"))
        XCTAssertTrue(sut.contains(where: \.value, is: "b"))
        XCTAssertTrue(sut.contains(where: \.value, is: "c"))
        XCTAssertFalse(sut.contains(where: \.value, is: "d"))
    }
    
    func test_doesNotContain() {
        let sut = [MockValue(value: "a")]
        XCTAssertFalse(sut.doesNotContain(where: \.value, is: "a"))
        XCTAssertTrue(sut.doesNotContain(where: \.value, is: "b"))
        XCTAssertTrue(sut.doesNotContain(where: \.value, is: "c"))
    }
}
