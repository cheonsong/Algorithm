class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        
        var stackS = Stack<Character>()
        var stackT = Stack<Character>()
        
        s.forEach { $0 == "#" ? stackS.pop() : stackS.push($0) }
        t.forEach { $0 == "#" ? stackT.pop() : stackT.push($0) }
        
        return stackS == stackT
    }
}

struct Stack<T: Equatable> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() {
        if !isEmpty {
            stack.removeLast()
        }
    }
    
    static func ==(left: Stack, right: Stack)-> Bool {
        return left.stack == right.stack
    }
}