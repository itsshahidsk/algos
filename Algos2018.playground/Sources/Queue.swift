import Foundation

public class Queue<T> {

    private var linkedList = LinkedList<T>.init()

    public func enqueue(value: T) {
        linkedList.append(value)
    }

    public func dequeue() -> T? {
        let value = linkedList.first?.value
        linkedList.removeNodeAtIndex(index: 0)
        return value
    }

    public var first: T? {
        return linkedList.first?.value
    }

    public init() {

    }
}
