import Foundation

public enum Change<T> {
	case initial([T])
	case update([T], deleted: [Int], inserted: [Int], updated: [Int])
}

public typealias ChangeClosure<T> = Closure<Change<T>>

public enum ObjectChange<T> {
	case updated(T)
	case deleted(T)
}

public typealias ObjectChangeClosure<T> = Closure<ObjectChange<T>>
