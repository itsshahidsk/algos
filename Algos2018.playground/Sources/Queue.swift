import Foundation

public class Queue {

    private var linkedList = LinkedList()

    public func enqueue(value: Int) {
        linkedList.append(value)
    }

    public func dequeue() -> Int? {
        let value = linkedList.first?.value
        linkedList.removeNodeAtIndex(index: 0)
        return value
    }

    public var first: Int? {
        return linkedList.first?.value
    }

    public init() {

    }
}
