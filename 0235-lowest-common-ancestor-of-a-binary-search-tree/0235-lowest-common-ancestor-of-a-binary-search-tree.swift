/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        return bst(root, p, q)
    }
    
    func bst(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?)-> TreeNode? {
        guard let root = root else { return nil }
        
        if p!.val < root.val && q!.val < root.val {
            return bst(root.left, p, q)
        } else if p!.val > root.val && q!.val > root.val {
            return bst(root.right, p, q)
        } else {
            return root
        }
    }
}