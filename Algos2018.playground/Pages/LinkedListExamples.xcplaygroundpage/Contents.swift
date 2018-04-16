//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let mylinkedList = LinkedList<String>.init()

mylinkedList.append("s")
mylinkedList.append("h")
mylinkedList.append("a")
mylinkedList.append("h")
mylinkedList.append("i")
mylinkedList.append("d")

print(mylinkedList)
var node = mylinkedList.nodeAtIndex(index: 0)
//print(" Value is \(node?.value)")
mylinkedList.removeNodeAtIndex(index: 5)
print(mylinkedList)
mylinkedList.append("shaik")
print(mylinkedList)
































