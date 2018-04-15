//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)



let myQueue = Queue()

myQueue.enqueue(value: 10)
myQueue.enqueue(value: 20)
myQueue.enqueue(value: 30)

print(myQueue.first!)

print(myQueue.dequeue()!)

print(myQueue.first!)

