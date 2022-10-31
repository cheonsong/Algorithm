/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    
    var array: [Int] = []
    
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        array.append(root.val)
        
        root.children.forEach {
            preorder($0)
        }
        
        return array
    }
}