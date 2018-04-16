import Foundation

public class LinkedList<T> {

    private var head: Node<T>?

    private var tail: Node<T>?

    public var isEmpty: Bool {
        return head == nil
    }

    public init() {

    }

    public var first: Node<T>? {
        return head
    }

    public var last: Node<T>? {
        return tail
    }

    public func append(_ value: T) {

        let newNode = Node<T>(value: value)

        if let lastNode = tail {
            newNode.prev = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }

        tail = newNode
    }

    public func nodeAtIndex(index: Int) -> Node<T>? {

        var i = 0

        var node = head

        while i < index  {
            node = node?.next

            if node == nil {
                break
            }

            i += 1
        }

        return node
    }

    public func removeNodeAtIndex(index: Int) {

        let node = nodeAtIndex(index: index)

        guard node != nil else {
            return
        }

        //Check if its head
        if node?.prev == nil {
            head = node?.next
        }

        //Check if its tail
        if node?.next == nil {
            tail = node?.prev
        }


        let prevNode = node?.prev
        let nextNode = node?.next

        prevNode?.next = nextNode
        nextNode?.prev = prevNode
    }

    public func removeAll() {
        head = nil
        tail = nil
    }
}

extension LinkedList: CustomStringConvertible {

    public var description: String {

        var text = "["
        var node = head

        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }

        return text + "]"
    }
}
