import Foundation

public class Node {

    public var next: Node?
    public weak var prev: Node?

    public var value: Int

    public init(value: Int) {
        self.value = value
    }
}
