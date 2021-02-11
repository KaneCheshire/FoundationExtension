import Foundation

public extension Sequence {
    
    func contains<Value: Equatable>(where keyPath: KeyPath<Element, Value>, is value: Value) -> Bool {
        contains(where: { $0[keyPath: keyPath] == value })
    }
    
    func doesNotContain<Value: Equatable>(where keyPath: KeyPath<Element, Value>, is value: Value) -> Bool {
        contains(where: keyPath, is: value) ? false : true
    }
}
