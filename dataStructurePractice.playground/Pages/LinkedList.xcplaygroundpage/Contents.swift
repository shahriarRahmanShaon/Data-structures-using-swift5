
import Foundation
public class Node<value> {
    public var value: value
    public var next: Node?
    public var previous: Node?
    
    init(value: value) {
        self.value = value
    }
    
}

//MARK:- creating linked list
public class LinkedList<value> {
    public typealias node = Node<value>
     var head: node?
    
    init() {
    }
    public var isEmpty: Bool{
        head == nil
    }
    public var tail: node?{
        guard var node = head else{
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
}
//MARK:- printing linkedlist
extension LinkedList{
    func displayMyList() {
        var current = head
        while current != nil {
            print(current!.value)
            current = current?.next
        }
    }
}

//MARK:- appending nodes in front
extension LinkedList{
    func push(value: value) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
        
    }
}
//MARK:- appending in the last
extension LinkedList{
    func append(value: value) {
        guard !isEmpty else {
            push(value: value)
            return
        }
        let newNode = Node(value: value)
        tail?.next = newNode
    }
}

//MARK:- insert after a given index
extension LinkedList{
    func insert(value: value, indexAfter index: Int)  {
        //TODO:-
    }
}
var list = LinkedList<Int>()
//list.push(value: 5)
//list.push(value: 6)
//list.push(value: 7)
//list.push(value: 10)

list.append(value: 5)
list.append(value: 8)
list.append(value: 10)
list.displayMyList()
print(list.tail?.value)
