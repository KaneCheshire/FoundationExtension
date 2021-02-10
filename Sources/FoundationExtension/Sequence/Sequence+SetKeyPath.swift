import Foundation

public extension Sequence {
    
    func set<Value>(_ keyPath: WritableKeyPath<Element, Value>, to value: Value) {
        forEach { obj in
            var obj = obj
            obj[keyPath: keyPath] = value
        }
    }
}
