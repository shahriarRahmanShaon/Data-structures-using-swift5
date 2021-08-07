
import Foundation

struct Stack<Element> {
    var storage: [Element] = []
    
}
extension Stack: CustomStringConvertible{
    var description: String{
       let values = storage.map({"\($0)"}).joined(separator: ",")
        return "\(values)"
    }
}
extension Stack{
    mutating func push(_ element: Element){
        storage.append(element)
    }
    mutating func pop() -> Element? {
        storage.popLast()
    }
}

//MARK:- reverse using stack
func reverseArray<T>(_ array: [T]) {
    var stack = Stack<T>()
    array.forEach { input in
        stack.push(input)
    }
    while  let value = stack.pop() {
        print(value)
    }
   
}
reverseArray([1,2,3,4,5])
