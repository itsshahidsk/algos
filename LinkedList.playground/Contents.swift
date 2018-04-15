//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node {

    var next: Node?
    weak var prev: Node?

    var value: Int

    init(value: Int) {
        self.value = value
    }
}


class LinkedList {

    private var head: Node?

    private var tail: Node?

    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node? {
        return head
    }

    public var last: Node? {
        return tail
    }

    public func append(_ value: Int) {

        let newNode = Node(value: value)

        if let lastNode = tail {
            newNode.prev = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }

        tail = newNode
    }

    public func nodeAtIndex(index: Int) -> Node? {

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

        var node = nodeAtIndex(index: index)

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


        var prevNode = node?.prev
        var nextNode = node?.next

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


let mylinkedList = LinkedList()

mylinkedList.append(10)
mylinkedList.append(20)
mylinkedList.append(30)
mylinkedList.append(40)
mylinkedList.append(50)
mylinkedList.append(60)

print(mylinkedList)
var node = mylinkedList.nodeAtIndex(index: 0)
//print(" Value is \(node?.value)")
mylinkedList.removeNodeAtIndex(index: 5)
print(mylinkedList)
mylinkedList.append(70)
print(mylinkedList)
































