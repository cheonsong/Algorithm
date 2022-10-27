/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var answer: ListNode?
        var array: [Int] = []
        
        var next: ListNode? = head
        while true {
            guard let node = next else { break }
            array.append(node.val)
            next = node.next
        }
        
        answer = listNode(list: array.reversed())
        
        return answer
    }
    
    func listNode(list: [Int])-> ListNode? {
        var node = ListNode()
        guard let first = list.first else { return nil }
        node.val = first
        node.next = listNode(list: Array(list[1...]))
        return node
    }
}