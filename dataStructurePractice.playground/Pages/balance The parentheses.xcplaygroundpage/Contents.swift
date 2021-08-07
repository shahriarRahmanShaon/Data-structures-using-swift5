import Foundation
struct Stack<Element> {
    var storage: [Element] = []
    init() {
    }
    
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
    func isEmpty() -> Bool {
        if storage.isEmpty{
            return true
        }else{
           return false
        }
    }
}
//MARK:- balancing the parenthesis
func balanceTheParenthesis(_ string: String) -> Bool{
    var stack = Stack<Character>()
    for character in string{
        if character == "("{
            stack.push(character)
        }else if character == ")"{
            if !stack.isEmpty(){
                stack.pop()
            }else{
                return false
            }
        }
    }
    return stack.isEmpty()
    
}
