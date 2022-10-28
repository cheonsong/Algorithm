/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        if head?.next == nil { return nil }
        
        var slow = head
        var fast = head
        
        while (slow?.next != nil || fast?.next != nil || fast?.next?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
            
            if (slow === fast) {
                break
            }
        }
        
        slow = head
        
        while(slow !== fast) {
            slow = slow?.next
            fast = fast?.next
        }
        
        return slow
    }
}