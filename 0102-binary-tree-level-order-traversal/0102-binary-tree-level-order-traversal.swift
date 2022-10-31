/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    
    var hashTable: [Int: [Int]] = [:]
    var level = 0
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var answer: [[Int]] = [[]]
        
        level += 1
        if let root = root {
            var value = hashTable[level] ?? []
            value.append(root.val)
            hashTable[level] = value
            
            levelOrder(root.left)
            levelOrder(root.right)
        }
        level -= 1
        
        hashTable.sorted(by: {$0.key < $1.key} ).map({answer.append($0.value)})
        answer.removeFirst()
        return answer
    }
}