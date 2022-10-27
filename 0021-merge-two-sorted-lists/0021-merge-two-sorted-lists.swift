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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var answer: ListNode?
        
        var next1: ListNode? = list1
        var next2: ListNode? = list2
        
        var array1: [Int] = []
        var array2: [Int] = []
        
        while true {
            guard let node1 = next1 else { break }
            array1.append(node1.val)
            next1 = node1.next
        }
        
        while true {
            guard let node2 = next2 else { break }
            array2.append(node2.val)
            next2 = node2.next
        }
        
        array1.append(contentsOf: array2)
        
        answer = listNode(list: array1.sorted())
        
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