//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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
































