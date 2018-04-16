import Foundation

public class Node<T> {

    public var next: Node<T>?
    public weak var prev: Node<T>?

    public var value: T

    public init(value: T) {
        self.value = value
    }
}
